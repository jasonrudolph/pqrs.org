#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'

class Index < PqrsBase
  def title
    case @language
    when :en
      'ShowyEdge - Software for OS X'
    when :ja
      'ShowyEdge - OS X用のソフトウェア'
    end
  end

  def navs_left_data
    [
     {
       :href => '/macosx/ShowyEdge/index.html',
       :name_l10n => {
         :en => 'ShowyEdge',
         :ja => 'ShowyEdge',
       },
     },
    ]
  end

  def tabs_definition
    [
     {
       :href => '#installation',
       :name_l10n => {
         :en => 'Installation',
         :ja => 'インストール方法',
       }
     },
     {
       :href => '#usage',
       :name_l10n => {
         :en => 'Usage',
         :ja => '使い方',
       }
     },
     {
       :href => '#quit',
       :name_l10n => {
         :en => 'How to quit',
         :ja => '終了する方法',
       }
     },
     {
       :href => '#uninstall',
       :name_l10n => {
         :en => 'Uninstall',
         :ja => 'アンインストール方法',
       }
     },
     {
       :href => '#development',
       :name_l10n => {
         :en => 'Development',
         :ja => '開発',
       }
     },
     {
       :href => '#history',
       :name_l10n => {
         :en => 'Version History',
         :ja => '更新履歴',
       }
     },
    ]
  end

  def histories
    data = [
            {
              :version => '1.4.0',
              :updated => '2013-06-16',
              :link => 'files/ShowyEdge-1.4.0.dmg',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Revised file permissions.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>ファイルのパーミッションを修正。</li>
</ul>
EOS
              },
            },
            {
              :version => '1.3.0',
              :updated => '2013-06-14',
              :link => 'files/ShowyEdge-1.3.0.dmg',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>First release.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>最初のリリース。</li>
</ul>
EOS
              },
            },
           ]
    set_l10n_text(data)
  end
end

PqrsUtil.make_page('/macosx/ShowyEdge/index.html', Index)
