# -*- coding: utf-8 -*-

Plugin.create(:nominate) do
  command(:nominate,
          name: "襲名",
          condition: Plugin::Command[:CanReplyAll],
          visible: true,
          role: :timeline) do |opt|
    users = opt.messages.map(&:message).map(&:idname).uniq
    opt.widget.create_postbox(footer: '('+users.map{|x| "@#{x}"}.join(' ') + ')') end

end
