-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: jspbeginner
-- ------------------------------------------------------
-- Server version	8.0.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `board_id` int NOT NULL AUTO_INCREMENT,
  `category` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `book_no` int DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `banner_img` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `views` int NOT NULL DEFAULT '0',
  `secret` tinyint(1) NOT NULL DEFAULT '0',
  `reply` text,
  PRIMARY KEY (`board_id`),
  KEY `fk_board_user_id` (`user_id`),
  KEY `fk_board_book_no` (`book_no`),
  CONSTRAINT `fk_board_book_no` FOREIGN KEY (`book_no`) REFERENCES `book` (`book_no`),
  CONSTRAINT `fk_board_user_id` FOREIGN KEY (`user_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,0,'사이트 점검 안내','2025년 6월 1일 01:00부터 03:00까지 사이트 점검이 예정되어 있습니다.','admin',NULL,NULL,NULL,'2025-04-01 09:00:00',120,0,NULL),(2,0,'신간 등록 안내','신간 도서가 업데이트되었습니다. 자세한 사항은 신간 코너를 참고하세요.','admin',NULL,NULL,NULL,'2025-04-02 10:00:00',85,0,NULL),(3,0,'이벤트 종료 안내','4월 독서 이벤트가 종료되었습니다. 참여해주신 모든 분들께 감사드립니다.','admin',NULL,NULL,NULL,'2025-04-03 11:00:00',96,0,NULL),(4,0,'배송 시스템 점검 공지','택배사 시스템 점검으로 인해 일부 배송이 지연될 수 있습니다.','admin',NULL,NULL,NULL,'2025-04-04 08:30:00',133,0,NULL),(5,0,'회원 등급제 시행 안내','새로운 회원 등급제가 5월부터 시행됩니다. 자세한 내용은 공지사항을 확인해주세요.','admin',NULL,NULL,NULL,'2025-04-05 14:15:00',210,0,NULL),(6,0,'서평 이벤트 발표','3월 서평 이벤트 당첨자를 발표합니다.','admin',NULL,NULL,NULL,'2025-04-06 13:00:00',74,0,NULL),(7,0,'이용약관 변경 안내','2025년 5월 1일부로 이용약관이 변경됩니다.','admin',NULL,NULL,NULL,'2025-04-07 10:30:00',90,0,NULL),(8,0,'개인정보 처리방침 개정 안내','개정된 개인정보 처리방침을 확인해 주세요.','admin',NULL,NULL,NULL,'2025-04-08 11:10:00',76,0,NULL),(9,0,'결제 시스템 업그레이드 공지','보다 안정적인 결제를 위해 시스템을 업그레이드합니다.','admin',NULL,NULL,NULL,'2025-04-09 16:45:00',188,0,NULL),(10,0,'앱 업데이트 안내','모바일 앱의 새로운 버전이 출시되었습니다.','admin',NULL,NULL,NULL,'2025-04-10 09:20:00',115,0,NULL),(11,0,'포인트 사용 정책 변경 안내','포인트 적립 및 사용 정책이 일부 변경되었습니다.','admin',NULL,NULL,NULL,'2025-04-11 10:00:00',97,0,NULL),(12,0,'주문 취소 정책 안내','주문 취소 시 유의사항을 공지드립니다.','admin',NULL,'1747930900741_file.txt','','2025-04-12 08:30:00',68,0,NULL),(13,0,'독서 캠페인 참여 안내','2025 봄 독서 캠페인이 시작됩니다!','admin',NULL,NULL,NULL,'2025-04-13 13:00:00',111,0,NULL),(14,0,'포인트 소멸 예정 안내','5월 말까지 사용하지 않은 포인트는 소멸됩니다.','admin',NULL,NULL,NULL,'2025-04-14 11:40:00',183,0,NULL),(15,0,'출판사 연계 이벤트 안내','특정 출판사와의 협업 이벤트가 진행 중입니다.','admin',NULL,'1747930892418_file.txt','','2025-04-15 15:30:00',126,0,NULL),(16,0,'주문 폭주로 인한 배송지연 안내','이용에 불편을 드려 죄송합니다. 순차적으로 배송 중입니다.','admin',NULL,NULL,NULL,'2025-04-16 09:55:00',257,0,NULL),(17,0,'시스템 오류 안내','일시적인 오류로 로그인 불가 현상이 있었습니다. 현재는 정상화되었습니다.','admin',NULL,NULL,NULL,'2025-04-17 10:25:00',71,0,NULL),(18,0,'1:1 문의 답변 지연 안내','고객센터 문의 답변이 다소 지연될 수 있습니다.','admin',NULL,NULL,NULL,'2025-04-18 08:00:00',88,0,NULL),(19,0,'기프트카드 출시 안내','선물용 기프트카드가 출시되었습니다.','admin',NULL,NULL,NULL,'2025-04-19 14:10:00',194,0,NULL),(20,0,'독서 통계 리포트 제공','개인 독서 기록 기반 통계 리포트를 제공합니다.','admin',NULL,NULL,NULL,'2025-04-20 10:50:00',142,0,NULL),(21,0,'이달의 추천 도서 안내','4월의 추천 도서를 소개합니다.','admin',NULL,NULL,NULL,'2025-04-21 11:30:00',159,0,NULL),(22,0,'리뷰 작성 시 포인트 제공 안내','리뷰 작성 시 추가 포인트를 제공합니다.','admin',NULL,NULL,NULL,'2025-04-22 09:15:00',119,0,NULL),(23,0,'마일리지 적립 기준 변경 안내','기존과 다른 적립 기준이 적용됩니다.','admin',NULL,NULL,NULL,'2025-04-23 08:45:00',110,0,NULL),(24,0,'정기점검 일정 안내','5월 정기점검 일정을 안내드립니다.','admin',NULL,'1747930864095_file.txt','','2025-04-24 13:30:00',107,0,NULL),(25,0,'공지사항 이용 방법','공지사항을 구독하면 실시간 알림을 받을 수 있습니다.','admin',NULL,'1747930828345_file.txt','','2025-04-25 11:20:00',96,0,NULL),(26,0,'웹사이트 UI 개선 안내','더 편리한 UI로 개편되었습니다.','admin',NULL,NULL,NULL,'2025-04-26 14:55:00',137,0,NULL),(27,0,'회원 정보 변경 주의 안내','회원 정보 변경 시 인증 절차가 필요합니다.','admin',NULL,NULL,NULL,'2025-04-27 12:30:00',128,0,NULL),(28,0,'추천인 제도 안내','친구를 초대하고 혜택을 받아보세요.','admin',NULL,NULL,NULL,'2025-04-28 09:40:00',117,0,NULL),(29,0,'교환 및 환불 규정 변경 안내','새로운 규정은 5월 10일부터 적용됩니다.','admin',NULL,NULL,NULL,'2025-04-29 11:10:00',164,0,NULL),(30,0,'긴급 시스템 점검 완료 안내','서버 점검이 완료되었습니다. 다시 이용하실 수 있습니다.','admin',NULL,NULL,NULL,'2025-04-30 17:00:00',152,0,NULL),(31,0,'자료 구입 신청 서비스 이용 안내','안녕하세요.\n보다 다양한 자료 제공을 위해 이용자 여러분의 요청을 바탕으로 자료를 구입하는 ‘자료 구입 신청’ 서비스를 운영하고 있습니다.\n\n본 서비스는 도서관에 비치되지 않은 자료 중, 이용자가 필요로 하는 도서를 신청하면 심의를 거쳐 구입을 검토하는 제도입니다.\n신청된 자료는 내부 검토 기준에 따라 선정되며, 구입이 확정될 경우 도서관에 비치되어 누구나 이용하실 수 있도록 제공됩니다.\n\n? 신청 대상 자료:\n\n학습 및 연구 목적에 적합한 단행본, 전공서적, 일반도서 등\n\n발간된 지 5년 이내의 국내외 출판물 (전자책 포함)\n\n도서관에 소장되어 있지 않은 자료\n\n⛔ 제외 대상:\n\n수험서, 문제집, 참고서, 특정 종교 또는 정치 편향 자료\n\n품절 또는 절판된 자료\n\n이미 소장 중인 자료 (중복 신청 불가)\n\n? 신청 방법:\n\n홈페이지 로그인 후 ‘자료 구입 신청’ 메뉴를 통해 직접 신청\n\n1인당 월 5권까지 신청 가능\n\n? 검토 및 구입 소요 기간:\n\n신청일로부터 약 2~4주 소요\n\n구입 여부 및 처리 결과는 마이페이지를 통해 확인 가능\n\n여러분의 적극적인 참여가 더 나은 도서관 환경을 만듭니다.\n많은 관심과 신청 바랍니다. 감사합니다.','admin',NULL,NULL,'1747930397097_banner1.jpg','2025-05-22 16:13:17',2,0,NULL),(32,0,'AI가 추천하는 오늘의 책, 지금 확인해보세요!','안녕하세요.\n우리 도서관에서는 이용자 여러분의 독서 선택을 돕기 위해 AI 기반 도서 추천 서비스를 새롭게 도입하였습니다.\n\n이제 “무슨 책을 읽어야 할까?” 고민하지 마세요!\n단 몇 번의 클릭만으로, 여러분의 독서 이력과 선호 장르를 바탕으로 AI가 딱 맞는 책을 추천해드립니다.\n\n? AI 추천 서비스 주요 기능\n\n개인화된 추천: 나의 독서 취향 분석을 통해 관련성 높은 도서를 선별\n\n신간 우선 추천: 최신 도서 위주의 리스트 제공\n\n이용자 맞춤 리스트 생성: 학습 목적, 취미 독서, 자기계발 등 선택 가능\n\n? 이용 방법\n\n도서관 홈페이지 로그인\n\n‘AI 추천도서’ 메뉴 클릭\n\n나의 관심 분야 및 최근 읽은 책 입력\n\n맞춤형 추천 리스트 확인 및 바로 대출 신청 가능!\n\n? 본 서비스는 ‘대학혁신지원사업’의 일환으로 제공되며, 추천 알고리즘은 지속적으로 개선됩니다.\n\nAI와 함께하는 새로운 독서 경험,\n여러분의 책 읽는 시간이 더 즐거워지길 바랍니다!','admin',NULL,'1747930876026_file.txt','1747930690286_banner2.png','2025-05-22 16:18:10',4,0,NULL),(33,0,'[이벤트] 도서관 다독자 선정 이벤트 안내','독서 문화를 장려하고 책을 사랑하는 학우들을 응원하기 위해\n**「다독자 선정 이벤트」**를 진행합니다.\n\n도서관의 장서를 적극적으로 이용해주신 학우분들 중,\n가장 많은 책을 대출하고 이용하신 분을 **‘다독자’**로 선정하여\n상금과 특별한 상품을 드립니다!\n\n? 참여 대상\n\n누구나 자동 참여\n\n? 선정 기준\n\n기간 내 도서 대출 및 열람실 이용 횟수 기준으로 자동 집계\n\n? 이벤트 기간\n\n2025년 3월 1일 ~ 2025년 5월 31일\n\n? 시상 내역\n\n다독자 1위: 문화상품권 10만원 + 도서관 기념품\n\n다독자 2~5위: 문화상품권 5만원 + 기념품\n\n? 결과 발표\n\n2025년 6월 7일 (금) 도서관 홈페이지 및 공지 게시판 안내 예정\n\n여러분의 많은 관심과 참여 바랍니다.\n지식을 향한 열정, 여러분의 독서가 그 시작입니다! ?\n\n','admin',NULL,NULL,'1747930975659_banner3.jpg','2025-05-22 16:22:56',1,0,NULL),(34,0,'? 학교 온 김에 도서관일주! 중앙·새벽벌 도서관 투어 모집 안내','신입생 및 재학생 여러분,\n도서관을 제대로 알고 활용하고 싶다면 지금이 기회!\n‘도서관일주’ 프로그램에서 중앙도서관과 새벽벌도서관을 투어하며\n주요 공간과 시설, 이용법을 함께 배워보세요.\n\n? 모집 대상\n\n학부 신입생 및 재학생 누구나\n\n? 모집 인원\n\n회당 최대 6명 소규모 운영\n\n? 운영 기간\n\n2025년 5월 26일(월) ~ 5월 29일(목)\n\n매일 10:30 ~ 11:30 (총 4회차)\n\n? 투어 장소\n\n중앙도서관 + 새벽벌도서관\n\n? 프로그램 내용\n\n도서관 층별 안내 및 도서 찾는 법\n\n모바일 이용증 사용법, 게이트 출입 안내\n\n좌석 발급기, 그룹 스터디룸 이용법\n\n각종 편의시설 및 학습 공간 체험\n\n? 참여 혜택\n\n비교과 마일리지 1점\n\n다과세트 제공\n\n신입생 도서관 이용 교육 이수 처리\n\n? 신청 방법\n\n도서관 홈페이지 > 공지사항 또는 QR코드 스캔 신청','admin',NULL,NULL,'1747931052120_banner3.png','2025-05-22 16:24:12',0,0,NULL),(35,0,'? 10월은 독서의 달! 특별한 독서 프로그램과 이벤트에 초대합니다 ?','10월은 책과 함께하는 특별한 한 달!\n**‘독서의 달 특별 행사’**에 여러분을 초대합니다. ?\n\n? 행사 기간\n2025년 10월 1일(수) ~ 10월 31일(금)\n\n? 행사 내용\n\n다양한 독서 프로그램 운영\n\n참여형 이벤트 및 독후 활동\n\n도서 추천, 북큐레이션, 독서 퀴즈 등 알찬 콘텐츠 제공\n\n? 참여자 혜택\n\n행사 참여 시 소정의 기념품 증정\n\n우수 참여자에게 상품 제공\n\n책 읽기 좋은 계절,\n도서관에서 책과 함께 힐링하는 시간을 가져보세요!\n자세한 프로그램 일정과 신청은 도서관 홈페이지를 참고해 주세요 ?\n\n?문의: 도서관 연구정보지원팀 (☎051-510-3159)\n\n','admin',NULL,'1747931102484_file.txt','1747931102486_banner4.png','2025-05-22 16:25:02',0,0,NULL),(36,0,'✍️ 인기 작가 김철수와의 특별한 만남! 작가와의 대화 & 사인회 ??','책 속 인물에 대해 직접 작가에게 묻고 싶은 적 있으셨나요?\n여러분을 위한 특별한 시간!\n『작가 김철수와의 만남』 행사에 초대합니다!\n\n? 일시\n2025년 11월 15일(토) 오후 3시\n\n? 장소\n중앙도서관 1층 다목적실\n\n?️ 행사 내용\n\n작가 김철수와의 라이브 북토크\n\nQ&A 및 독자와의 대화\n\n현장 사인회 진행!\n\n? 참가자 혜택\n\n선착순 기념품 증정\n\n김철수 작가 도서 할인 쿠폰 제공\n\n작가의 생생한 이야기와 따뜻한 사인을 직접 받아볼 수 있는\n소중한 기회를 놓치지 마세요!\n\n? 참가 신청은 도서관 홈페이지 또는 안내 데스크에서 가능!\n(선착순 마감될 수 있습니다)\n\n? 문의: 도서관 문화행사 담당자 (☎051-510-3159)','admin',NULL,NULL,'1747931154803_banner5.png','2025-05-22 16:25:55',1,0,NULL),(37,0,'사서와 함께하는 2025년 5월 정기 학술 정보 이용교육 안내','안녕하세요, 여러분!\n다가오는 2025년 5월, 도서관에서는 학술 정보 활용 능력 향상을 위한 정기 교육을 진행합니다. 이번 교육은 전문 사서와 함께 학술 데이터베이스 검색법, 논문 활용법, 그리고 최신 연구 동향 파악법을 배우는 시간으로 구성되어 있습니다.\n\n교육 대상은 대학생, 대학원생, 연구원 등 학술 정보를 적극적으로 활용하고자 하는 분들이며, 기본부터 심화 과정까지 단계별 맞춤 교육이 준비되어 있으니 관심 있는 분들의 많은 참여 부탁드립니다.\n\n교육 일정: 2025년 5월 15일 (수) 오후 2시 ~ 4시\n\n장소: 도서관 세미나실 3층\n\n참가 방법: 도서관 홈페이지 온라인 신청 또는 방문 접수\n\n교육 내용:\n\n학술 데이터베이스 기본 검색 방법\n\n키워드 및 필터링 활용법\n\n참고문헌 관리 프로그램 소개\n\n최신 학술 트렌드 및 연구 동향 찾기\n\n이번 교육을 통해 효율적이고 체계적인 학술 자료 활용법을 익혀 연구와 학업에 큰 도움이 되시길 바랍니다. 궁금한 점은 도서관 사서에게 문의해 주세요!\n\n많은 참여와 관심 부탁드립니다. 감사합니다.','admin',NULL,'1747931228918_file.txt','1747931228919_banner6.jpg','2025-05-22 16:27:09',7,0,NULL),(38,1,'도서관 이용 시간 문의','도서관은 주말에도 운영하나요?','user01',NULL,NULL,NULL,'2025-05-23 17:50:00',13,0,'주말에는 오전 10시부터 오후 4시까지 운영합니다.'),(39,1,'전자책 대출 방법이 궁금합니다','전자책 대출 절차를 자세히 알려주세요.','user01',NULL,NULL,NULL,'2025-05-23 16:40:00',11,0,NULL),(40,1,'도서 대출 연장 가능 여부','대출한 도서를 연장할 수 있나요?','admin',NULL,NULL,NULL,'2025-05-23 15:25:00',17,0,'네, 1회에 한해 연장 가능합니다. 도서관 홈페이지에서 신청해 주세요.'),(41,1,'도서 분실 시 처리 절차','도서를 분실했을 때 어떻게 해야 하나요?','user01',NULL,NULL,NULL,'2025-05-23 14:10:00',13,0,'즉시 도서관에 신고하시고 변상 절차를 안내 받으세요.'),(42,1,'회원 정보 수정 방법 문의','회원 정보는 어디서 수정할 수 있나요?','admin',NULL,NULL,NULL,'2025-05-22 18:45:00',7,0,NULL),(43,1,'학술 정보 교육 일정 확인 요청','5월 학술 정보 이용 교육 일정 알려주세요.','user01',NULL,NULL,NULL,'2025-05-22 17:30:00',18,0,'2025년 5월 15일 오후 2시부터 4시까지 진행됩니다.'),(44,1,'비밀번호 재설정 방법','비밀번호를 잊었는데 재설정 방법을 알려주세요.','user01',NULL,NULL,NULL,'2025-05-22 16:15:00',9,0,NULL),(45,1,'자료 검색 오류 발생','데이터베이스 검색 시 오류가 납니다.','user01',NULL,NULL,NULL,'2025-05-22 15:05:00',12,1,'현재 시스템 점검 중입니다. 잠시 후 다시 시도해 주세요.'),(46,1,'도서관 휴관일 안내','5월 중 휴관일이 언제인지 알고 싶습니다.','user01',NULL,NULL,NULL,'2025-05-21 19:50:00',15,0,'5월 1일과 5월 15일이 휴관일입니다.'),(47,1,'좌석 예약 시스템 문의','좌석 예약은 어떻게 하나요?','admin',NULL,NULL,NULL,'2025-05-21 18:35:00',7,0,NULL),(48,1,'복사 서비스 비용 문의','복사 서비스 이용 요금이 궁금합니다.','user01',NULL,NULL,NULL,'2025-05-21 17:20:00',8,0,'흑백 복사는 장당 50원, 컬러 복사는 장당 100원입니다.'),(49,1,'도서관 내 와이파이 접속법','도서관 내 무료 와이파이 접속 방법 알려주세요.','user01',NULL,NULL,NULL,'2025-05-20 16:05:00',14,0,NULL),(50,1,'열람실 내 음식물 반입 가능 여부','열람실에서 음식물 섭취가 가능한가요?','user01',NULL,NULL,NULL,'2025-05-20 14:50:00',9,1,'열람실 내 음식물 반입은 금지되어 있습니다.'),(51,1,'구입 희망 도서 신청 절차','구입 희망 도서 신청은 어떻게 하나요?','user01',NULL,NULL,NULL,'2025-05-20 13:40:00',12,0,NULL),(52,1,'대출 가능한 도서 수 제한','한 번에 대출할 수 있는 도서 수는 몇 권인가요?','admin',NULL,NULL,NULL,'2025-05-19 19:25:00',8,0,'한 번에 최대 5권까지 대출 가능합니다.'),(53,1,'도서관 이용 규칙 관련 질문','소음에 민감한데 조용한 구역이 있나요?','user01',NULL,NULL,NULL,'2025-05-19 18:10:00',5,0,NULL),(54,1,'전자책 뷰어 추천 부탁드립니다','전자책을 읽을 수 있는 뷰어 앱 추천해 주세요.','user01',NULL,NULL,NULL,'2025-05-19 16:55:00',10,0,'도서관 공식 앱 외에도 Aldiko, Moon+ Reader 등을 추천드립니다.'),(55,1,'대출 연체 벌금 안내','대출 연체 시 벌금이 어떻게 되나요?','user01',NULL,NULL,NULL,'2025-05-18 17:40:00',14,0,'연체 일수에 따라 일일 500원이 부과됩니다.'),(56,1,'도서관 내 프린터 사용 방법','프린터 사용 절차가 궁금합니다.','admin',NULL,NULL,NULL,'2025-05-18 16:25:00',7,0,NULL),(57,1,'비공개 게시글 작성 가능 여부','문의 내용을 비공개로 올릴 수 있나요?','user01',NULL,NULL,NULL,'2025-05-18 15:10:00',6,1,'네, 글 작성 시 비공개 설정을 선택하시면 됩니다.');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `book_no` int NOT NULL AUTO_INCREMENT,
  `thumbnail` varchar(255) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `author` varchar(50) NOT NULL,
  `publisher` varchar(50) NOT NULL,
  `publish_year` int NOT NULL,
  `book_info` text NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `category` varchar(50) NOT NULL,
  `rental_state` tinyint NOT NULL DEFAULT '0',
  `rent_count` int DEFAULT '0',
  `reg_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `mod_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`book_no`),
  UNIQUE KEY `isbn` (`isbn`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'book/img/9788936433598.jpg','채식주의자','한강','창비',2022,'한국인 최초 맨부커상 수상작가 한강의 새로운 시도!','9788936433598','문학',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(2,'book/img/9791191114768.jpg','단 한번의 삶','김영하','복복서가',2025,'오직 한 번만 쓸 수 있는, 나의 삶에 대하여','9791191114768','문학',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(3,'book/img/9791169211901.jpg','혼자 공부하는 자바','신용권','한빛미디어',2024,'자바 프로그래밍을 처음 시작할 때, 혼자서는 코드 이해가 어려울 때, 자바를 제대로 공부할 수 있는 최고의 책!','9791169211901','IT',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(4,'book/img/9788965422785.jpg','해커스 토익 기출 VOCA(보카)','David Cho','해커스어학연구소',2024,'토익 기출 보카 30일 완성!','9788965422785','어학',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(5,'book/img/9788994492032.jpg','자바의 정석','남궁성','도우출판',2018,'자바 입문자를 위한 최고의 교재입니다.','9788994492032','IT',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(6,'book/img/9791162243077.jpg','혼자 공부하는 파이썬','윤인성','한빛미디어',2020,'파이썬 초보자를 위한 기초부터 실습까지 설명','9791162243077','IT',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(7,'book/img/9791186560403.jpg','미움받을 용기','기시미 이치로','인플루엔셜',2014,'자기계발 심리학 입문서','9791186560403','문학',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(8,'book/img/9788970635137.jpg','어린 왕자','생텍쥐페리','열림원',2007,'전 세계인이 사랑하는 명작 동화','9788970635137','문학',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(9,'book/img/9788937460445.jpg','1984','조지 오웰','민음사',2003,'디스토피아 소설의 고전','9788937460445','문학',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(10,'book/img/9788937460446.jpg','데미안','헤르만 헤세','민음사',2000,'자아를 찾아가는 성장 소설','9788937460446','문학',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(11,'book/img/9788965703537.jpg','나는 나로 살기로 했다','김수현','마음의숲',2016,'나 자신을 지키며 살아가는 방법','9788965703537','문학',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(12,'book/img/9788954640130.jpg','우리는 언젠가 만난다','김연수','문학동네',2015,'한국 문단의 감성적인 이야기','9788954640130','문학',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(13,'book/img/19767706.jpg','EBS 라디오 입이 트이는 영어 (2025년 5월)','김연수','동아출판',2025,'청취자들의 재밌고 감동적인 사연들과 우리들의 일상생활과 관련한 영어표현들을 배울 수 있어서 매우 좋습니다.','19767706','어학',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(14,'book/img/9788901294742.jpg','청춘의 독서(특별증보판)','유시민','웅진지식하우스',2025,'이 시대의 신경안정제 유시민이 다시 펼쳐 든 오래된 지도','9788901294742','문학',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(15,'book/img/9788917239492.jpg','ETS 토익 정기시험 기출문제집 1000 Vol 4 LC(리스닝)','ETS','YBM',2025,'출제기관 ETS 토익 정기시험 기출문제 10회 최신판 Vol.4 독점공개!','9788917239492','어학',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(16,'book/img/9788917239508.jpg','ETS 토익 정기시험 기출문제집 1000 Vol 4 RC(리딩)','ETS','YBM',2025,'출제기관 ETS 토익 정기시험 기출문제 10회 최신판 Vol.4 독점공개!','9788917239508','어학',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(17,'book/img/9788932024639.jpg','서랍에 저녁을 넣어 두었다','한강','문학과지성사',2013,'심해의 밤. 침묵에서 길어 올린 핏빛 언어들, 상처 입은 영혼에 닿는 투명한 빛의 궤적들','9788932024639','문학',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(18,'book/img/9788932043562.jpg','빛과 실','한강','문학과지성사',2025,'마침내 우리 곁에 당도한 봄, 깨어나는 연둣빛 생명의 경이! 살아 있는 한 희망을 상상하는 일, 그 오래고 깊은 사랑에 대한 한강의 기록들','9788932043562','문학',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(19,'book/img/9788937473401.jpg','급류','정대건','민음사',2022,'너 소용돌이에 빠지면 어떻게 해야 하는 줄 알아? 수면에서 나오려 하지 말고 숨 참고 밑바닥까지 잠수해서 빠져나와야 돼.','9788937473401','문학',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(20,'book/img/9788940293980.jpg','착! 붙는 일본어 독학 첫걸음','일본어 공부기술연구소','시사일본어사',2024,'입에 착! 시험에 착! 착! 붙는 착한 독학서! 짜임새 있는 설명과 재미있는 스토리를 따라가다 보면 어느새 일본어는 Level-up!','9788940293980','어학',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(21,'book/img/9788954677158.jpg','긴긴밤','루리','문학동네',2021,'세상에 마지막 하나 남은 흰바위코뿔소와 코뿔소 품에서 태어난 어린 펭귄. 그땐 기적인 줄 몰랐다. 머리부터 발끝까지 모든 것이 다른 우리에게 서로밖에 없다는 게.','9788954677158','어린이',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(22,'book/img/9788960499751.jpg','거의 모든 일상 표현의 영어','케빈 강, 해나 변','사람in',2022,'회화 실력 향상의 첩경은 자신의 일상을 영어로 표현하는 것!','9788960499751','어학',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(23,'book/img/9788965424215.jpg','해커스 일본어 첫걸음: 기초20일 독학 완성!','해커스 일본어연구소','해커스어학연구소',2022,'일본어회화 무료 동영상강의+단어 쓰기 노트+무료MP3+JLPT N5·N4 실전모의고사 제공, 따라만 해도 일본어가 술~술~20일만에 일본어 기초 완성!','9788965424215','어학',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(24,'book/img/9788965424765.jpg','해커스 토익 RC Reading(리딩) 기본서','David Cho','해커스어학연구소',2023,'19년 연속 토익 베스트셀러 1위 해커스 토익 리딩의 기본서! 문법+어휘+독해에서 실전까지!','9788965424765','어학',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(25,'book/img/9788965424772.jpg','해커스 토익 LC Listening(리스닝) 기본서','David Cho','해커스어학연구소',2023,'19년 연속 토익 베스트셀러 1위 해커스 토익 리스닝의 기본서! 토익 LC 기본에서 실전까지!','9788965424772','어학',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(26,'book/img/9788965427483.jpg','해커스 토익 실전 LC+RC 3(모의고사 문제집+해설집)','해커스 어학연구소','해커스어학연구소',2025,'2024년 하반기 출제경향 완벽 반영! 최신 경향을 반영한 실전모의고사 5회분으로 토익 실전 완벽 대비!','9788965427483','어학',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(27,'book/img/9788983711892.jpg','코스모스','칼 세이건, 홍승수','사이언스북스',2010,'1980년 7억 5천만이 시청한 칼 세이건의 코스모스가 2014년 내셔널지오그래픽채널에서 더 화려하게 부활한다!','9788983711892','과학',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(28,'book/img/9791130646381.jpg','이처럼 사소한 것들','클레어 키건. 홍한별','다산책방',2023,'한 세대에 한 명씩만 나오는 작가, 클레어 키건의 대표작!','9791130646381','문학',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(29,'book/img/9791130665566.jpg','고양이 타타 : 너를 만난 여름','로로','다산어린이',2025,'네이버웹툰 고양이 타타를 원작으로 한 동화가 동화로 읽는 웹툰 시리즈의 두 번째 작품으로 출간되었다.','9791130665566','어린이',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(30,'book/img/9791138928113.jpg','2025 큰별쌤 최태성의 별별한국사 한국사능력검정시험 심화(1, 2, 3급)(상)','최태성','이투스북',2024,'2025 큰별쌤 최태성의 별별한국사 한국사능력검정시험 심화 상 오랜 연구와 검증으로 한국사에 기초가 전혀 없는 사람도 단기간에 한능검에 합격할 수 있는 최적의 구성을 완성하였습니다.','9791138928113','자격증',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(31,'book/img/9791138928120.jpg','2025 큰별쌤 최태성의 별별한국사 한국사능력검정시험 심화(1, 2, 3급)(하)','최태성','이투스북',2024,'2025 큰별쌤 최태성의 별별한국사 한국사능력검정시험 심화 하 오랜 연구와 검증으로 한국사에 기초가 전혀 없는 사람도 단기간에 한능검에 합격할 수 있는 최적의 구성을 완성하였습니다.','9791138928120','자격증',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(32,'book/img/9791140702503.jpg','영어회화 핵심패턴 233','백선엽','길벗이지톡',2023,'80만 독자에게 선택받으며 수많은 영어 초보자의 실력을 끌어올려 준 이 시리즈의 핵심은 233개의 패턴에 단어만 갈아 끼우면 누구나 쉽고 세련된 영어 회화를 구사할 수 있다는 것이다. 시리즈 구성은 두 권으로 본인의 영어 수준에 따라 선택해서 학습하면 된다.','9791140702503','어학',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(33,'book/img/9791140702978.jpg','일본어 문법 무작정 따라하기','후지이 아사리','길벗이지톡',2023,'12만 독자가 선택한 일본어 문법 분야 No.1 베스트셀러! 16년 간 일본어 문법 분야 베스트셀러 자리를 굳건히 지키며 12만 독자의 사랑을 받은 《일본어 문법 무작정 따라하기》. 국내 최초로 문법도 귀로 들으면서 익히는 ‘소리 패턴 학습법’을 적용했다.','9791140702978','어학',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(34,'book/img/9791140703302.jpg','코딩 자율학습 나도코딩의 파이썬 입문','나도코딩','길벗',2023,'30만 명의 구독자와 2만 6천 명의 수강생이 증명한 최고의 파이썬 강의! 나도코딩의 프로그래밍 학습 노하우를 배우자!','9791140703302','IT',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(35,'book/img/9791140713295.jpg','2026 시나공 빅데이터분석기사 실기(Python)','김태현','길벗',2025,'유튜브 누적 조회수 25만 회, 캐글 52만뷰로 검증된 빅데이터 전문가 퇴근후딴짓의 빅데이터분석기사 실기 합격 노하우를 공개합니다! 수험생 맞춤 구성으로 합격까지 빈틈없이 대비합니다!','9791140713295','IT',1,1,'2025-05-20 15:40:42','2025-05-21 16:17:01'),(36,'book/img/9791140712793.jpg','랭체인 & 랭그래프로 AI 에이전트 개발하기','서지현','길벗',2025,'LLM만으로 항공권 예약 같은 작업이 가능할까? AI 에이전트라면 가능하다! 똑똑한 AI 서비스를 만들어 보자!','9791140712793','IT',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(37,'book/img/9791140714520.jpg','모두의 딥러닝','조태호','길벗',2025,'그 무엇보다 쉽게, 누구나 이해할 수 있는 딥러닝 입문서! 딥러닝 기초부터 챗GPT의 근간이 되는 자연어 처리와 트랜스포머까지!','9791140714520','IT',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(38,'book/img/9791158392239.jpg','모던 자바스크립트 Deep Dive','이웅모','위키북스',2021,'269개의 그림과 원리를 파헤치는 설명으로 자바스크립트의 기본 개념과 동작 원리를 이해하자!','9791158392239','IT',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(39,'book/img/9791158394646.jpg','모던 리액트 Deep Dive','김용찬','위키북스',2023,'요즘 프런트엔드 개발은 자바스크립트와 리액트부터 시작한다는 말이 있을 정도로 최근 몇 년간 프런트엔드 생태계에서 리액트의 비중은 날이 갈수록 커지고 있습니다. 리액트에 관심 있는 개발자라면 이 책을 통해 리액트 앱 개발의 시작부터 끝까지 경험해 보면서 웹 서비스 개발의 즐거움을 만끽하시길 바랍니다.','9791158394646','IT',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(40,'book/img/9791158395674.jpg','이지패스 2025 ADsP 데이터분석 준전문가','전용문','위키북스',2025,'2025년 ADsP 시험 합격을 위한 최신 기출문제 완벽 분석! 총 1,695문항 압도적 문제 수 + 수험서 앱(총 27회차 기출 및 모의고사 수록) 제공!','9791158395674','IT',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(41,'book/img/9791161508207.jpg','한권 한달 완성 일본어 말하기 Lv 1','최유리, 시원스쿨어학연구소','시원스쿨닷컴',2024,'히라가나 가타카나를 몰라도 일본어로 말할 수 있다! 반복 또 반복! 기본 문장 구조를 따라만 하면 자연스럽게 일본어가 나온다!','9791161508207','어학',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(42,'book/img/9791161509051.jpg','Go! 독학 일본어 첫걸음','최유리, 시원스쿨어학연구소','시원스쿨닷컴',2024,'문자부터 실생활 회화까지 일본어를 처음 시작하는 누구나 체계적으로 쉽고 재미있게 학습할 수 있게 구성한 교재입니다.','9791161509051','어학',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(43,'book/img/9791163034735.jpg','Do it! 점프 투 파이썬','박응용','이지스퍼블리싱',2023,'프로그래밍 분야 8년 연속 베스트셀러! Do it! 점프 투 파이썬 전면 개정 2판 출시!','9791163034735','IT',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(44,'book/img/9791165219956.jpg','일본어 무작정 따라하기(완전판)','후지이 아사리','길벗이지톡',2023,'히라가나를 몰라도 문법을 외우지 않아도 무작정 따라 하면 말문이 트입니다. 이 책은 《일본어 무작정 따라하기》와 《일본어 무작정 따라하기 심화편》의 내용을 합쳐 한 권으로 구성한 완전판입니다. 이제 단 한 권으로 38만 일본어 학습자가 검증한 <소리 학습법>을 배워보세요. 귀와 입이 동시에 트이는 경험을 할 수 있습니다.','9791165219956','어학',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(45,'book/img/9791168623453.jpg','나의 첫 주기율표 공부','애비 히든, 김동규','시그마북스',2025,'단 118가지의 원소가 우리 주변의 모든 것을 설명한다! 세상의 축소판! 주기율표 위에 펼쳐진 각양각색 원소 이야기','9791168623453','과학',0,1,'2025-05-20 15:40:42','2025-05-21 18:12:49'),(46,'book/img/9791169210911.jpg','혼자 공부하는 C언어','서현우','한빛미디어',2023,'혼자 해도 충분하다! 1:1 과외하듯 배우는 C 프로그래밍 자습서! 혼자서도 충분히 C 언어를 배울 수 있다는 자신감과 확신이 계속 들 것입니다!','9791169210911','IT',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(47,'book/img/9791171010523.jpg','거의 모든 묘사 표현의 영어','최주연','사람in',2024,'이제 영어로 묘사할 수 있다! 우리 주변의 다양한 상황과 주제를 묘사하는 데 필요한 표현을 꾹꾹 담았습니다. 뭐라고 묘사하는지 몰라서 못 했던, 그래서 영어 앞에서 단답형으로 과묵해지던 학습자들을 넉살 좋은 수다쟁이로 만들 〈거의 모든 묘사 표현의 영어〉. 묘사의 중요성을 인식하는 그 순간부터 영어 실력이 올라갑니다.','9791171010523','어학',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(48,'book/img/9791191438406.jpg','거꾸로 읽는 세계사','유시민','돌베개',2021,'한 시대를 풍미했던 베스트셀러의 귀환, 100만 독자를 사로잡은 이야기의 힘','9791191438406','문학',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(49,'book/img/9791191836219.jpg','아홉 살에 시작하는 똑똑한 초등신문','신효원','책장속북스',2023,'신문 읽기를 처음 시작하는 아홉 살부터, 세상을 보는 눈을 넓히는 열세 살까지!','9791191836219','어린이',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(50,'book/img/9791192483238.jpg','침묵의 퍼레이드','히가시노 게이고, 김난주','재인',2025,'법이 지키지 못하는 정의를 지키기 위해 침묵하는 사람들, 그들의 거대한 속임수와 뜻밖에 드러나는 진실, 복선과 반전, 인간 드라마가 겹겹이 쌓인 미스터리의 밀푀유!','9791192483238','문학',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(51,'book/img/9791193506073.jpg','사랑인 줄 알았는데 부정맥','전국유로실버타운협회, 이지수','포레스트북스',2024,'시리즈 누계 90만 부 돌파! 일본 전역을 웃음바다로 만든, 가장 잘 팔리는 실버 센류!','9791193506073','문학',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(52,'book/img/9791193506332.jpg','무례한 친구가 생겼어요','크리스티나 퍼니발 외','리틀포레스트',2024,'아무리 친하다고 해도 친구 사이에는 지켜야만 하는 선! 경계가 있어요. 그 선을 지키지 않는 친구를 무례하다라고 하지요. 무례한 친구에게 경계선을 긋는 것은 친구에게 화를 내는 것도, 싸우는 것도 아니에요. 내가 원하는 것과 원하지 않는 것을 표현하는 수단으로 나를 지키고 존중하는 일이지요. 이제 이야기 속 주인공 지니와 함께 무례한 친구에게 화내지 않고 울지 않고 단호하게 내 생각을 전달하는 법을 연습해 보세요.','9791193506332','어린이',1,1,'2025-05-20 15:40:42','2025-05-21 16:16:51'),(53,'book/img/9791193937136.jpg','나는 도대체 왜 피곤할까','에이미 샤, 김잔디','북플레저',2024,'강력한 삶의 동기를 느끼며 평생 넘치는 에너지로 살아가기 위해서는 이 계획이 반드시 필요하다.이제 내일은 개운하게 일어날 준비가 되었는가?','9791193937136','문학',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(54,'book/img/9791194330424.jpg','넥서스','유발 하라리, 김명주','김영사',2024,'글로벌 베스트셀러 사피엔스 호모 데우스 21세기를 위한 21가지 제언으로 우리 시대 가장 중요한 사상가의 반열에 오른 유발 하라리 교수가 압도적 통찰로 AI 혁명의 의미와 본질을 꿰뚫어 보고 인류에게 남은 기회를 냉철하게 성찰하는 신작으로 돌아왔다.','9791194330424','문학',0,0,'2025-05-20 15:40:42','2025-05-20 15:40:42'),(55,'book/img/9791197413025.jpg','다정한 것이 살아남는다','브라이언 헤어 외','디플롯',2021,'가장 간절한 순간에 찾아온 21세기 다윈의 계승자가 쓴 완벽한 책!','9791197413025','문학',1,1,'2025-05-20 15:40:42','2025-05-20 18:03:35'),(56,'book/img/9791198243430.jpg','5천 년 역사가 단숨에 이해되는 최소한의 한국사','최태성','프런트페이지',2023,'대한민국 대표 역사 강사 최태성의 5천 년 역사가 단숨에 이해되는 핵심 한국사','9791198243430','문학',1,1,'2025-05-20 15:40:42','2025-05-20 15:42:50'),(57,'book/img/9791198610607.jpg','알사탕 제조법','백희나','스토리보울',2024,'이 알사탕은 간절한 마음의 소리를 듣게 해주는 신비한 알사탕이다.','9791198610607','어린이',1,1,'2025-05-20 15:40:42','2025-05-20 15:41:48'),(58,'book/img/9791198610614.jpg','알사탕','백희나','스토리보울',2024,'마음의 소리를 찾아서... 간절함이 부른 마법의 알사탕','9791198610614','어린이',1,1,'2025-05-20 15:40:42','2025-05-20 15:42:07');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library_room`
--

DROP TABLE IF EXISTS `library_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `library_room` (
  `room_code` varchar(10) NOT NULL,
  `room_name` varchar(10) NOT NULL,
  `seat_num` int DEFAULT NULL,
  `reserve_state` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`room_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_room`
--

LOCK TABLES `library_room` WRITE;
/*!40000 ALTER TABLE `library_room` DISABLE KEYS */;
/*!40000 ALTER TABLE `library_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `id` varchar(20) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `joindate` date DEFAULT NULL,
  `kakao_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_kakao_id` (`kakao_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('aaa','1234','이지원','남성','부산1','tnstlasla11@gmail.com','01012341234','2025-05-23',NULL),('admin','1111','관리자1','여성','부산','tnstlasla1@gmail.com','01011110000','2025-04-30',NULL),('k_4261899356','12345','이지원','여성','뉴욕','tnstlasla@gmail.com','01011111234','2025-05-19','4261899356'),('user01','hashed_pass_01','김철수qqq','남성','서울11','user01@example.com','010-1111-2222','2023-01-15',NULL),('user03','hashed_pass_03','박지훈','남성','서울3','user03@example.com','010-5555-6666','2023-03-10',NULL),('user04','hashed_pass_04','최유진','여성','서울41','user04@example.com','010-7777-8888','2023-04-05',NULL),('user05','hashed_pass_05','정민준','남성','서울5','user05@example.com','010-9999-0000','2023-05-25',NULL);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rental_book`
--

DROP TABLE IF EXISTS `rental_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental_book` (
  `rent_no` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) NOT NULL,
  `book_no` int NOT NULL,
  `start_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `return_due` datetime DEFAULT NULL,
  `return_date` datetime DEFAULT NULL,
  `return_state` tinyint DEFAULT '0',
  PRIMARY KEY (`rent_no`),
  KEY `fk_rental_user` (`user_id`),
  KEY `fk_rental_book` (`book_no`),
  CONSTRAINT `fk_rental_book` FOREIGN KEY (`book_no`) REFERENCES `book` (`book_no`),
  CONSTRAINT `fk_rental_user` FOREIGN KEY (`user_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_book`
--

LOCK TABLES `rental_book` WRITE;
/*!40000 ALTER TABLE `rental_book` DISABLE KEYS */;
INSERT INTO `rental_book` VALUES (1,'admin',57,'2025-05-20 15:41:48','2025-06-03 15:41:48',NULL,0),(2,'admin',58,'2025-05-20 15:42:07','2025-06-03 15:42:07',NULL,0),(3,'admin',56,'2025-05-20 15:42:50','2025-06-03 15:42:50',NULL,0),(4,'admin',55,'2025-05-20 18:03:35','2025-06-03 18:03:35',NULL,0),(5,'admin',52,'2025-05-21 16:16:51','2025-06-04 16:16:51',NULL,0),(6,'admin',45,'2025-05-21 16:16:56','2025-06-04 16:16:56','2025-05-21 18:12:49',1),(7,'admin',35,'2025-05-21 16:17:01','2025-06-04 16:17:01',NULL,0);
/*!40000 ALTER TABLE `rental_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_reserve`
--

DROP TABLE IF EXISTS `room_reserve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_reserve` (
  `reserve_num` varchar(20) NOT NULL,
  `reserve_room` varchar(10) NOT NULL,
  `reserve_seat` int DEFAULT NULL,
  `reserve_id` varchar(20) NOT NULL,
  `reserve_name` varchar(20) NOT NULL,
  `reserve_date` date NOT NULL,
  `reserve_start` int NOT NULL,
  `reserve_end` int NOT NULL,
  `reserve_time` datetime NOT NULL,
  `reserve_notice` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`reserve_num`),
  KEY `fk_reserve_id` (`reserve_id`),
  CONSTRAINT `fk_reserve_id` FOREIGN KEY (`reserve_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_reserve`
--

LOCK TABLES `room_reserve` WRITE;
/*!40000 ALTER TABLE `room_reserve` DISABLE KEYS */;
INSERT INTO `room_reserve` VALUES ('MB-0-0530-1011','meetingB',NULL,'admin','관리자1','2025-05-30',10,11,'2025-05-23 14:50:04',NULL);
/*!40000 ALTER TABLE `room_reserve` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-23 17:37:54
