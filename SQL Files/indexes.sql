-- Индексы для всех внешних ключей
CREATE INDEX dph_ids ON
    dev_phones ( dph_id );

CREATE INDEX l_ids ON
    localization ( l_id );
CREATE INDEX l_languages ON
    localization ( l_language );

CREATE INDEX prog_areas ON
    programs ( prog_area );

CREATE INDEX game_genres ON
    games ( game_genre );

CREATE INDEX lic_logins ON
    licenses ( lic_login );
CREATE INDEX lic_contracts ON
    licenses ( lic_contract );
CREATE INDEX lic_types ON
    licenses ( lic_type );

CREATE INDEX emp_dep_ids ON
    employers ( emp_dep_id );
CREATE INDEX emp_apps ON
    employers ( emp_app );

CREATE INDEX req_logins ON
    requests ( req_login );
CREATE INDEX req_themes ON
    requests ( req_theme );
CREATE INDEX req_emp_ids ON
    requests ( req_emp_id );
CREATE INDEX req_statuss ON
    requests ( req_status );