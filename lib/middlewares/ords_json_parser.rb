class OrdsJsonParser < Her::Middleware::ParseJSON

  def parse(body)
    json = parse_json(body)

    res = {
      data:     json[:items]  || {},
      errors:   json[:errors] || [],
      metadata: {
        hasMore: json[:hasMore],
        limit:   json[:limit],
        offset:  json[:offset],
        count:   json[:count]
      }
    }

    byebug

    res
  end

  def on_complete(env)
    env[:body] = case env[:status]
    when 204
      parse('{}')
    else
      parse(env[:body])
    end
  end

end
