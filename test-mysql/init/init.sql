CREATE TABLE BUS_STOP_INFO (
                               ID BIGINT AUTO_INCREMENT PRIMARY KEY COMMENT '자동 증가하는 기본 키 ID',
                               STATION_ID CHAR(9) UNIQUE COMMENT '정류장 고유 ID',
                               STATION_NAME VARCHAR(255) COMMENT '정류장 이름',
                               ARS_ID CHAR(5) COMMENT '정류장 번호',
                               LINK_ID CHAR(10) COMMENT '링크 ID',
                               X_LATITUDE DOUBLE COMMENT '좌표X 위도',
                               Y_LONGITUDE DOUBLE COMMENT '좌표Y 경도',
                               USE_YN CHAR(1) COMMENT '사용 여부 (1: 사용, 0: 미사용)',
                               VIRTUAL_BUS_STOP_YN CHAR(1) COMMENT '가상 정류장 여부 (1: 가상정류장, 0: 일반정류장)',
                               RECORD_DATE TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '기록일시',
                               REGISTER_DATE TIMESTAMP COMMENT '등록일시'
                                   EDIT_DATE TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정일시'
) COMMENT '정류장 정보 테이블 (T-DATA)';