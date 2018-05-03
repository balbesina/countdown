# frozen_string_literal: true

module HomeHelper
  def time_diff(future)
    mm, ss = (future - Time.now).to_i.divmod(60)
    hh, mm = mm.divmod(60)
    dd, hh = hh.divmod(24)

    days = dd.positive? ? "#{dd} days, " : ''
    format('%<days>s%<hours>02d:%<minutes>02d:%<seconds>02d',
           days: days, hours: hh, minutes: mm, seconds: ss)
  end
end