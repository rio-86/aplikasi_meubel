-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 01 Mei 2022 pada 18.50
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scancom`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `unit` varchar(10) NOT NULL,
  `quantity` int(11) NOT NULL,
  `Itemname` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `numberprf` int(11) NOT NULL,
  `item_code` varchar(30) NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bill_submission`
--

CREATE TABLE `bill_submission` (
  `number` int(11) NOT NULL,
  `employee` varchar(35) NOT NULL,
  `departement` varchar(35) NOT NULL,
  `currency` varchar(35) NOT NULL,
  `attach_bill_submission` varchar(35) NOT NULL,
  `expense_bill_submission` varchar(5) NOT NULL,
  `date` date NOT NULL,
  `signatory` varchar(35) NOT NULL,
  `email_signature` varchar(35) NOT NULL,
  `cash_advance` varchar(35) NOT NULL,
  `expense` varchar(5) NOT NULL,
  `incoming_money` varchar(5) NOT NULL,
  `deduction_in_salary` varchar(5) NOT NULL,
  `reduce_debtor_account` varchar(5) NOT NULL,
  `status` varchar(35) NOT NULL,
  `CA_FAD` varchar(5) NOT NULL,
  `CA_MGR` varchar(5) NOT NULL,
  `status_bill_submission` varchar(30) NOT NULL,
  `revision` varchar(20) NOT NULL,
  `CA_MGR_bill_sub` varchar(5) NOT NULL,
  `CA_FAD_bill_sub` varchar(5) NOT NULL,
  `revision_bill_submission` varchar(20) NOT NULL,
  `date_bill_submission` date NOT NULL,
  `total_bill_submission_idr` double NOT NULL,
  `total_bill_submission_usd` double NOT NULL,
  `update_revision` varchar(15) NOT NULL,
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bill_submission_detail`
--

CREATE TABLE `bill_submission_detail` (
  `number` int(11) NOT NULL,
  `items` varchar(50) NOT NULL,
  `account_number` varchar(15) NOT NULL,
  `amount_idr` double NOT NULL,
  `line` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `broken_item1`
--
-- sedang digunakan(#1932 - Table 'scancom.broken_item1' doesn't exist in engine)

-- --------------------------------------------------------

--
-- Struktur dari tabel `broken_item_detail1`
--
-- sedang digunakan(#1932 - Table 'scancom.broken_item_detail1' doesn't exist in engine)

-- --------------------------------------------------------

--
-- Struktur dari tabel `cash_statement`
--
-- sedang digunakan(#1033 - Incorrect information in file: '.\scancom\cash_statement.frm')

-- --------------------------------------------------------

--
-- Struktur dari tabel `cash_statement_detail`
--
-- sedang digunakan(#1033 - Incorrect information in file: '.\scancom\cash_statement_detail.frm')

-- --------------------------------------------------------

--
-- Struktur dari tabel `check_po`
--

CREATE TABLE `check_po` (
  `job` varchar(25) NOT NULL,
  `cust_account` varchar(25) NOT NULL,
  `sc_item_no` varchar(25) NOT NULL,
  `sc_item_name` varchar(120) NOT NULL,
  `pcs` varchar(10) NOT NULL,
  `latest_date` date NOT NULL,
  `sup_no` varchar(25) NOT NULL,
  `supplier_name` varchar(50) NOT NULL,
  `plan` int(11) NOT NULL,
  `date_acceptance` date NOT NULL,
  `acceptance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail`
--

CREATE TABLE `detail` (
  `supplier` varchar(30) NOT NULL,
  `employee` varchar(30) NOT NULL,
  `departement` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `general_requirements` varchar(30) NOT NULL,
  `numberprf` int(11) NOT NULL,
  `purpose` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `fpr`
--

CREATE TABLE `fpr` (
  `fpr_number` int(11) NOT NULL,
  `disapproved_articles` varchar(5) NOT NULL,
  `random_qc_maker` varchar(150) NOT NULL,
  `tanggal` date NOT NULL,
  `note` text NOT NULL,
  `fsc` varchar(15) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `fpr_detail`
--

CREATE TABLE `fpr_detail` (
  `fpr_number` int(11) NOT NULL,
  `sci_article` varchar(30) NOT NULL,
  `description` varchar(150) NOT NULL,
  `version` varchar(50) NOT NULL,
  `packed` varchar(50) NOT NULL,
  `note` varchar(50) NOT NULL,
  `line` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hardware_overview`
--

CREATE TABLE `hardware_overview` (
  `id` int(11) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `quantity_sales_order` double NOT NULL,
  `category` varchar(30) NOT NULL,
  `remarks_from_commercial` varchar(40) NOT NULL,
  `fsc_status` char(10) NOT NULL,
  `note` varchar(40) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hardware_overview_2021`
--

CREATE TABLE `hardware_overview_2021` (
  `id` int(11) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `quantity_sales_order` double NOT NULL,
  `category` varchar(30) NOT NULL,
  `remarks_from_commercial` varchar(40) NOT NULL,
  `fsc_status` char(20) NOT NULL,
  `note` varchar(40) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hardware_overview_2122`
--

CREATE TABLE `hardware_overview_2122` (
  `id` int(11) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `quantity_sales_order` double NOT NULL,
  `category` varchar(30) NOT NULL,
  `remarks_from_commercial` varchar(40) NOT NULL,
  `fsc_status` char(20) NOT NULL,
  `note` varchar(40) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hardware_overview_detail`
--

CREATE TABLE `hardware_overview_detail` (
  `id` int(11) NOT NULL,
  `hardware_item_number` varchar(30) NOT NULL,
  `hardware_item_name` varchar(250) NOT NULL,
  `used` varchar(10) NOT NULL,
  `drawing_code` varchar(20) NOT NULL,
  `quantity` mediumint(9) NOT NULL,
  `summary` varchar(35) NOT NULL,
  `category` varchar(50) NOT NULL,
  `given_out_supplier` mediumint(9) NOT NULL,
  `given_out_supplier_last_history` mediumint(9) NOT NULL,
  `given_out_other` mediumint(9) NOT NULL,
  `outstanding_order` mediumint(9) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `line_num` tinyint(11) NOT NULL,
  `golongan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hardware_overview_detail_2021`
--

CREATE TABLE `hardware_overview_detail_2021` (
  `id` int(11) NOT NULL,
  `hardware_item_number` varchar(30) NOT NULL,
  `hardware_item_name` varchar(250) NOT NULL,
  `used` varchar(10) NOT NULL,
  `drawing_code` varchar(20) NOT NULL,
  `quantity` double NOT NULL,
  `summary` varchar(35) NOT NULL,
  `category` varchar(50) NOT NULL,
  `given_out_supplier` mediumint(9) NOT NULL,
  `given_out_supplier_last_history` mediumint(9) NOT NULL,
  `given_out_other` mediumint(9) NOT NULL,
  `outstanding_order` mediumint(9) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `line_num` tinyint(11) NOT NULL,
  `golongan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hardware_overview_detail_2122`
--

CREATE TABLE `hardware_overview_detail_2122` (
  `id` int(11) NOT NULL,
  `hardware_item_number` varchar(30) NOT NULL,
  `hardware_item_name` varchar(250) NOT NULL,
  `used` varchar(10) NOT NULL,
  `drawing_code` varchar(20) NOT NULL,
  `quantity` double NOT NULL,
  `summary` varchar(35) NOT NULL,
  `category` varchar(50) NOT NULL,
  `given_out_supplier` mediumint(9) NOT NULL,
  `given_out_supplier_last_history` mediumint(9) NOT NULL,
  `given_out_other` mediumint(9) NOT NULL,
  `outstanding_order` mediumint(9) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `line_num` tinyint(11) NOT NULL,
  `golongan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hardware_request`
--

CREATE TABLE `hardware_request` (
  `number` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `supplier` varchar(50) NOT NULL,
  `po_num` varchar(25) NOT NULL,
  `po_qty` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hardware_request_detail`
--

CREATE TABLE `hardware_request_detail` (
  `number` int(11) NOT NULL,
  `item_number` varchar(50) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `hardware_qty` varchar(20) NOT NULL,
  `line_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hdn`
--

CREATE TABLE `hdn` (
  `hdn_number` int(11) NOT NULL,
  `date` date NOT NULL,
  `menuju` varchar(50) NOT NULL,
  `alamat_in` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL,
  `po_item` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hdn_detail`
--

CREATE TABLE `hdn_detail` (
  `hdn_number` int(11) NOT NULL,
  `quantity` float NOT NULL,
  `semnumber` varchar(30) NOT NULL,
  `hardware_item` varchar(250) NOT NULL,
  `hr_quantity` float NOT NULL,
  `given_qty` float NOT NULL,
  `outstanding` float NOT NULL,
  `remarks` varchar(24) NOT NULL,
  `line_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `imn`
--

CREATE TABLE `imn` (
  `number` int(11) NOT NULL,
  `sem_number` varchar(50) NOT NULL,
  `item_name` varchar(150) NOT NULL,
  `pallete` int(11) NOT NULL,
  `ekstra` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `fsc` varchar(50) NOT NULL,
  `bomunitid` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `location` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `actual_date` date NOT NULL,
  `po_number` varchar(15) NOT NULL,
  `order_account` varchar(10) NOT NULL,
  `purch_name` varchar(150) NOT NULL,
  `sca_category` varchar(5) NOT NULL,
  `note` text NOT NULL,
  `line_num` int(11) NOT NULL,
  `status` varchar(11) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `imn_hardware`
--

CREATE TABLE `imn_hardware` (
  `number` int(11) NOT NULL,
  `location` varchar(15) NOT NULL,
  `date` date NOT NULL,
  `sender` varchar(50) NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `imn_hardware_detail`
--

CREATE TABLE `imn_hardware_detail` (
  `number` int(11) NOT NULL,
  `sem_number` varchar(25) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `bomunitid` varchar(20) NOT NULL,
  `pallete` float NOT NULL,
  `ekstra` float NOT NULL,
  `total` float NOT NULL,
  `line_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `imn_incoming`
--

CREATE TABLE `imn_incoming` (
  `number` int(11) NOT NULL,
  `location` varchar(15) NOT NULL,
  `date` date NOT NULL,
  `sender` varchar(15) NOT NULL,
  `receiver` varchar(15) NOT NULL,
  `fsc_status` varchar(25) NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `imn_incoming_detail`
--

CREATE TABLE `imn_incoming_detail` (
  `number` int(11) NOT NULL,
  `sem_number` varchar(250) NOT NULL,
  `item_name` varchar(150) NOT NULL,
  `bomunitid` varchar(20) NOT NULL,
  `pallete` float NOT NULL,
  `ekstra` float NOT NULL,
  `total` float NOT NULL,
  `line_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `imn_lama`
--

CREATE TABLE `imn_lama` (
  `number` int(11) NOT NULL,
  `sem_number` varchar(50) NOT NULL,
  `item_name` varchar(150) NOT NULL,
  `pallete` int(11) NOT NULL,
  `ekstra` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `fsc` varchar(50) NOT NULL,
  `bomunitid` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `location` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `actual_date` date NOT NULL,
  `po_number` varchar(15) NOT NULL,
  `order_account` varchar(10) NOT NULL,
  `purch_name` varchar(150) NOT NULL,
  `sca_category` varchar(5) NOT NULL,
  `note` text NOT NULL,
  `line_num` int(11) NOT NULL,
  `status` varchar(11) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `imn_manual`
--

CREATE TABLE `imn_manual` (
  `number` int(11) NOT NULL,
  `sem_number` varchar(50) NOT NULL,
  `item_name` varchar(150) NOT NULL,
  `pallete` int(11) NOT NULL,
  `ekstra` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `fsc` varchar(50) NOT NULL,
  `bomunitid` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `location` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `po_number` varchar(15) NOT NULL,
  `order_account` varchar(10) NOT NULL,
  `purch_name` varchar(150) NOT NULL,
  `sca_category` varchar(5) NOT NULL,
  `note` text NOT NULL,
  `line_num` int(11) NOT NULL,
  `status` varchar(11) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `imn_manual_detail`
--

CREATE TABLE `imn_manual_detail` (
  `number` int(11) NOT NULL,
  `sem_number` varchar(15) NOT NULL,
  `item_name` varchar(150) NOT NULL,
  `pallete` int(11) NOT NULL,
  `ekstra` float NOT NULL,
  `total` float NOT NULL,
  `fsc` varchar(30) NOT NULL,
  `bomunitid` varchar(30) NOT NULL,
  `category` varchar(30) NOT NULL,
  `line_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `inventorytag`
--

CREATE TABLE `inventorytag` (
  `tagnumber` char(30) CHARACTER SET latin1 NOT NULL,
  `semnumber` varchar(20) CHARACTER SET latin1 NOT NULL,
  `item_name` varchar(250) CHARACTER SET latin1 NOT NULL,
  `username` varchar(30) CHARACTER SET latin1 NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `quantity` float NOT NULL,
  `satuan` varchar(10) CHARACTER SET latin1 NOT NULL,
  `status` varchar(6) CHARACTER SET latin1 NOT NULL,
  `warehouse` varchar(20) CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `invoicereceipt`
--

CREATE TABLE `invoicereceipt` (
  `nama` varchar(15) NOT NULL,
  `receiptnumber` int(11) NOT NULL,
  `supplier` varchar(20) NOT NULL,
  `invoicenumber` varchar(15) NOT NULL,
  `service` varchar(15) NOT NULL,
  `suppliername` varchar(30) NOT NULL,
  `invoicevalue` varchar(15) NOT NULL,
  `tanggal` date NOT NULL,
  `textbox1` varchar(15) NOT NULL,
  `textbox2` varchar(15) NOT NULL,
  `textbox3` varchar(15) NOT NULL,
  `textbox4` varchar(15) NOT NULL,
  `textbox5` varchar(15) NOT NULL,
  `textbox6` varchar(15) NOT NULL,
  `textbox7` varchar(15) NOT NULL,
  `textbox8` varchar(15) NOT NULL,
  `textbox9` varchar(15) NOT NULL,
  `textbox10` varchar(15) NOT NULL,
  `textbox11` varchar(15) NOT NULL,
  `textbox12` varchar(15) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `lastmodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `item_movement`
--

CREATE TABLE `item_movement` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `employee` varchar(15) NOT NULL,
  `area` varchar(50) NOT NULL,
  `status` varchar(15) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `item_movement_detail`
--

CREATE TABLE `item_movement_detail` (
  `id` int(11) NOT NULL,
  `employee` varchar(15) NOT NULL,
  `item_number` varchar(25) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `pallete` tinyint(4) NOT NULL,
  `extra` tinyint(4) NOT NULL,
  `total` tinyint(4) NOT NULL,
  `area` varchar(15) NOT NULL,
  `line_num` tinyint(4) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(25) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `item_product`
--

CREATE TABLE `item_product` (
  `item_number` varchar(15) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `search_name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `item_product_itr`
--

CREATE TABLE `item_product_itr` (
  `item_code` varchar(25) NOT NULL,
  `description` varchar(250) NOT NULL,
  `products` varchar(25) NOT NULL,
  `bomunitid` varchar(15) NOT NULL,
  `rec_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `item_receive_technical`
--

CREATE TABLE `item_receive_technical` (
  `ir_number` int(11) NOT NULL,
  `suppliername` varchar(50) NOT NULL,
  `supplier_number` varchar(30) NOT NULL,
  `prf_number` int(11) NOT NULL,
  `po_number` int(11) NOT NULL,
  `date` date NOT NULL,
  `furniture` varchar(25) NOT NULL,
  `table_tops` varchar(25) NOT NULL,
  `slats` varchar(25) NOT NULL,
  `raw_wood` varchar(25) NOT NULL,
  `hardware` varchar(25) NOT NULL,
  `carton` varchar(25) NOT NULL,
  `hang_tags` varchar(25) NOT NULL,
  `brass_plate` varchar(25) NOT NULL,
  `material` varchar(25) NOT NULL,
  `production_material` varchar(25) NOT NULL,
  `other` varchar(25) NOT NULL,
  `stationary` varchar(20) NOT NULL,
  `mandatory` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status_approve` varchar(30) NOT NULL,
  `fsc` varchar(25) NOT NULL,
  `manager` varchar(30) NOT NULL,
  `kategory` varchar(30) NOT NULL,
  `ledger` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `item_receive_technical_approve`
--

CREATE TABLE `item_receive_technical_approve` (
  `ir_number` int(11) NOT NULL,
  `suppliername` varchar(50) NOT NULL,
  `supplier_number` varchar(30) NOT NULL,
  `prf_number` int(11) NOT NULL,
  `po_number` int(11) NOT NULL,
  `date` date NOT NULL,
  `furniture` varchar(25) NOT NULL,
  `table_tops` varchar(25) NOT NULL,
  `slats` varchar(25) NOT NULL,
  `raw_wood` varchar(25) NOT NULL,
  `hardware` varchar(25) NOT NULL,
  `carton` varchar(25) NOT NULL,
  `hang_tags` varchar(25) NOT NULL,
  `brass_plate` varchar(25) NOT NULL,
  `material` varchar(25) NOT NULL,
  `production_material` varchar(25) NOT NULL,
  `other` varchar(25) NOT NULL,
  `stationary` varchar(20) NOT NULL,
  `mandatory` varchar(30) NOT NULL,
  `status_approve` varchar(30) NOT NULL,
  `fsc` varchar(25) NOT NULL,
  `manager` varchar(30) NOT NULL,
  `ledger` varchar(50) NOT NULL,
  `iR_Approve_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `item_receive_technical_detail`
--

CREATE TABLE `item_receive_technical_detail` (
  `ir_number` int(11) NOT NULL,
  `line_num` int(11) NOT NULL,
  `prf_number` int(11) NOT NULL,
  `semnumber` varchar(50) NOT NULL,
  `itemname` varchar(88) NOT NULL,
  `quantity` float NOT NULL,
  `satuan` varchar(15) NOT NULL,
  `delivered` float NOT NULL,
  `rejected` float NOT NULL,
  `accepted` float NOT NULL,
  `ia` int(11) NOT NULL,
  `iia` int(11) NOT NULL,
  `iiia` int(11) NOT NULL,
  `iva` int(11) NOT NULL,
  `va` int(11) NOT NULL,
  `via` int(11) NOT NULL,
  `viia` int(11) NOT NULL,
  `viiia` int(11) NOT NULL,
  `ixa` int(11) NOT NULL,
  `xa` int(11) NOT NULL,
  `xia` int(11) NOT NULL,
  `xiia` int(11) NOT NULL,
  `xiiia` int(11) NOT NULL,
  `ledger` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `item_receive_technical_detail_approve`
--

CREATE TABLE `item_receive_technical_detail_approve` (
  `ir_number` int(11) NOT NULL,
  `line_num` int(11) NOT NULL,
  `prf_number` int(11) NOT NULL,
  `semnumber` varchar(50) NOT NULL,
  `itemname` varchar(88) NOT NULL,
  `quantity` float NOT NULL,
  `satuan` varchar(15) NOT NULL,
  `delivered` float NOT NULL,
  `rejected` float NOT NULL,
  `accepted` float NOT NULL,
  `ia` int(11) NOT NULL,
  `iia` int(11) NOT NULL,
  `iiia` int(11) NOT NULL,
  `iva` int(11) NOT NULL,
  `va` int(11) NOT NULL,
  `via` int(11) NOT NULL,
  `viia` int(11) NOT NULL,
  `viiia` int(11) NOT NULL,
  `ixa` int(11) NOT NULL,
  `xa` int(11) NOT NULL,
  `xia` int(11) NOT NULL,
  `xiia` int(11) NOT NULL,
  `xiiia` int(11) NOT NULL,
  `iR_Approve_number` int(11) NOT NULL,
  `ledger` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `itr`
--

CREATE TABLE `itr` (
  `number` int(11) NOT NULL,
  `employee` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `from_wh` varchar(150) NOT NULL,
  `destination` varchar(150) NOT NULL,
  `fsc` varchar(15) NOT NULL,
  `note` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `itr_detail`
--

CREATE TABLE `itr_detail` (
  `number` int(11) NOT NULL,
  `item_number` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL,
  `set_barang` float NOT NULL,
  `quantity` float NOT NULL,
  `bomunitid` varchar(15) NOT NULL,
  `line_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `journey`
--

CREATE TABLE `journey` (
  `date` date NOT NULL,
  `type` varchar(30) NOT NULL,
  `passenger` varchar(30) NOT NULL,
  `from_` varchar(30) NOT NULL,
  `to_` varchar(30) NOT NULL,
  `ticket` varchar(30) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ledger`
--

CREATE TABLE `ledger` (
  `number` int(11) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `list`
--

CREATE TABLE `list` (
  `ItemID` varchar(30) NOT NULL,
  `ItemName` varchar(150) NOT NULL,
  `FSC` varchar(15) NOT NULL,
  `bomunitid` varchar(10) NOT NULL,
  `Category` varchar(10) NOT NULL,
  `rec_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `manager`
--

CREATE TABLE `manager` (
  `name` varchar(30) NOT NULL,
  `departement` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `email_spv` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `material_request_icp`
--

CREATE TABLE `material_request_icp` (
  `number` int(11) NOT NULL,
  `material_requested` varchar(50) NOT NULL,
  `area` varchar(50) NOT NULL,
  `request_date` date NOT NULL,
  `latest_receiving_date` varchar(50) NOT NULL,
  `job` text NOT NULL,
  `quantity_produced` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `material_request_icp_detail`
--

CREATE TABLE `material_request_icp_detail` (
  `number` int(11) NOT NULL,
  `item_number` varchar(50) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `quantity` float NOT NULL,
  `unit` varchar(15) NOT NULL,
  `remarks` varchar(15) NOT NULL,
  `line_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `number_sequence`
--

CREATE TABLE `number_sequence` (
  `number` int(11) NOT NULL,
  `summary` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `otherinventory`
--

CREATE TABLE `otherinventory` (
  `tagnumber` varchar(30) NOT NULL,
  `itemname` varchar(40) NOT NULL,
  `semnumber` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `setor` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchase`
--

CREATE TABLE `purchase` (
  `prf_number` bigint(11) NOT NULL,
  `kode_barang` varchar(20) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `quantity` double NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `harga` double NOT NULL,
  `jumlah` double NOT NULL,
  `ledger` varchar(15) NOT NULL,
  `line_num` int(11) NOT NULL,
  `Approved_prf_number` int(11) NOT NULL,
  `prf_number1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchase_approve`
--

CREATE TABLE `purchase_approve` (
  `prf_number` bigint(20) NOT NULL,
  `kode_barang` varchar(20) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `quantity` double NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `harga` double NOT NULL,
  `jumlah` float NOT NULL,
  `ledger` varchar(15) NOT NULL,
  `line_num` int(11) NOT NULL,
  `Approved_prf_number` int(11) NOT NULL,
  `prf_number1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchase_detail`
--

CREATE TABLE `purchase_detail` (
  `prf_number` bigint(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `suppliername` varchar(80) NOT NULL,
  `ledger` varchar(150) NOT NULL,
  `requirements` text NOT NULL,
  `departement` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL,
  `manager` varchar(30) NOT NULL,
  `email` varchar(130) NOT NULL,
  `status_prf` varchar(30) NOT NULL,
  `status_por` varchar(30) NOT NULL,
  `status_po` varchar(30) NOT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `approver` varchar(30) NOT NULL,
  `currency` varchar(5) NOT NULL,
  `kategory` varchar(30) NOT NULL,
  `Approved_prf_number` int(11) NOT NULL,
  `prf_number_relasi` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchase_detail_approve`
--

CREATE TABLE `purchase_detail_approve` (
  `prf_number` bigint(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `suppliername` varchar(80) NOT NULL,
  `ledger` varchar(150) NOT NULL,
  `requirements` text NOT NULL,
  `departement` varchar(30) NOT NULL,
  `status_approve` varchar(30) NOT NULL,
  `manager` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status_prf` varchar(30) NOT NULL,
  `status_po` varchar(30) NOT NULL,
  `status_por` varchar(40) NOT NULL,
  `status_ir` varchar(35) NOT NULL,
  `review_purchasing` varchar(20) NOT NULL,
  `currency` varchar(5) NOT NULL,
  `Approved_prf_number` int(11) NOT NULL,
  `prf_number_relasi` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchase_order`
--

CREATE TABLE `purchase_order` (
  `number` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `supplier` varchar(50) NOT NULL,
  `note` text NOT NULL,
  `vat` decimal(10,0) NOT NULL,
  `summary_vat` float DEFAULT NULL,
  `currency` varchar(5) NOT NULL,
  `keterangan` varchar(98) NOT NULL,
  `status` varchar(50) NOT NULL,
  `status_manager_fad` varchar(30) NOT NULL,
  `status_cancel` varchar(7) NOT NULL,
  `upload` varchar(500) NOT NULL,
  `employee` varchar(50) NOT NULL,
  `manager` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `ledger` varchar(50) NOT NULL,
  `number_prf` int(11) NOT NULL,
  `number_por` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchase_order_approve`
--

CREATE TABLE `purchase_order_approve` (
  `number` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `supplier` varchar(50) NOT NULL,
  `note` text NOT NULL,
  `vat` decimal(10,0) NOT NULL,
  `summary_vat` double NOT NULL,
  `currency` varchar(5) NOT NULL,
  `keterangan` varchar(98) NOT NULL,
  `status` varchar(30) NOT NULL,
  `status_manager_fad` varchar(30) NOT NULL,
  `status_cancel` varchar(8) NOT NULL,
  `employee` varchar(30) NOT NULL,
  `manager` varchar(50) NOT NULL,
  `ledger` varchar(50) NOT NULL,
  `number_prf` int(11) NOT NULL,
  `number_por` int(11) NOT NULL,
  `status_ir` varchar(35) NOT NULL,
  `purchase_order_approve` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchase_order_detail`
--

CREATE TABLE `purchase_order_detail` (
  `number` int(11) NOT NULL,
  `description` varchar(150) NOT NULL,
  `tanggal` date NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` float NOT NULL,
  `amount` float NOT NULL,
  `ledger` varchar(15) NOT NULL,
  `line` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchase_order_detail_approve`
--

CREATE TABLE `purchase_order_detail_approve` (
  `number` int(11) NOT NULL,
  `description` varchar(150) NOT NULL,
  `tanggal` date NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` float NOT NULL,
  `amount` float NOT NULL,
  `ledger` varchar(15) NOT NULL,
  `line` int(11) NOT NULL,
  `purchase_order_detail_approve` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchase_order_request`
--

CREATE TABLE `purchase_order_request` (
  `manager` varchar(35) NOT NULL,
  `email` varchar(50) NOT NULL,
  `employee` varchar(35) NOT NULL,
  `Number_PRF` int(11) NOT NULL,
  `category` varchar(5) NOT NULL,
  `PO_number_supplier` int(11) NOT NULL,
  `date` date NOT NULL,
  `supplier_name` varchar(50) NOT NULL,
  `supplier_number` varchar(50) NOT NULL,
  `contact_name` varchar(50) NOT NULL,
  `Item_number` varchar(35) NOT NULL,
  `item_name` varchar(150) NOT NULL,
  `hand_out_hardware` varchar(50) NOT NULL,
  `had_out_hardware_no` varchar(50) NOT NULL,
  `had_out_hardware_percentage` double NOT NULL,
  `status` varchar(30) NOT NULL,
  `status_create_PO` varchar(30) NOT NULL,
  `textku` text NOT NULL,
  `delivery_date1` date NOT NULL,
  `delivery_date2` date NOT NULL,
  `delivery_date3` date NOT NULL,
  `delivery_date4` date NOT NULL,
  `delivery_date5` date NOT NULL,
  `por_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchase_order_request_approve`
--

CREATE TABLE `purchase_order_request_approve` (
  `manager` varchar(35) NOT NULL,
  `email` varchar(50) NOT NULL,
  `employee` varchar(35) NOT NULL,
  `Number_PRF` int(11) NOT NULL,
  `category` varchar(5) NOT NULL,
  `PO_number_supplier` int(11) NOT NULL,
  `date` date NOT NULL,
  `supplier_name` varchar(50) NOT NULL,
  `supplier_number` varchar(50) NOT NULL,
  `contact_name` varchar(50) NOT NULL,
  `Item_number` varchar(35) NOT NULL,
  `item_name` varchar(150) NOT NULL,
  `hand_out_hardware` varchar(50) NOT NULL,
  `had_out_hardware_no` varchar(50) NOT NULL,
  `had_out_hardware_percentage` double NOT NULL,
  `status` varchar(30) NOT NULL,
  `status_create_PO` varchar(30) NOT NULL,
  `textku` text NOT NULL,
  `delivery_date1` date NOT NULL,
  `delivery_date2` date NOT NULL,
  `delivery_date3` date NOT NULL,
  `delivery_date4` date NOT NULL,
  `delivery_date5` date NOT NULL,
  `Approved_prf_number` int(11) NOT NULL,
  `por_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchase_order_request_detail1`
--

CREATE TABLE `purchase_order_request_detail1` (
  `item_name1` varchar(60) NOT NULL,
  `item_number1` varchar(20) NOT NULL,
  `delivery_date1` date NOT NULL,
  `delivery_date2` date NOT NULL,
  `delivery_date3` date NOT NULL,
  `quantity_total` double NOT NULL,
  `quantity1` double NOT NULL,
  `quantity2` double NOT NULL,
  `quantity3` double NOT NULL,
  `quantity4` double NOT NULL,
  `quantity5` double NOT NULL,
  `price_per_unit` double NOT NULL,
  `quantity` double NOT NULL,
  `delivery_date` date NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `number_prf` int(15) NOT NULL,
  `line` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchase_order_request_detail1_approve`
--

CREATE TABLE `purchase_order_request_detail1_approve` (
  `price_per_unit` double NOT NULL,
  `quantity` double NOT NULL,
  `delivery_date` date NOT NULL,
  `number_prf` int(15) NOT NULL,
  `line` int(11) NOT NULL,
  `Approved_prf_number` int(11) NOT NULL,
  `item_name1` varchar(60) NOT NULL,
  `item_number1` varchar(20) NOT NULL,
  `delivery_date1` date NOT NULL,
  `delivery_date2` date NOT NULL,
  `delivery_date3` date NOT NULL,
  `quantity_total` double NOT NULL,
  `quantity1` double NOT NULL,
  `quantity2` double NOT NULL,
  `quantity3` double NOT NULL,
  `quantity4` double NOT NULL,
  `quantity5` double NOT NULL,
  `delivery_date4` date NOT NULL,
  `delivery_date5` date NOT NULL,
  `satuan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchase_order_request_detail2`
--

CREATE TABLE `purchase_order_request_detail2` (
  `quantity` double NOT NULL,
  `Price` double NOT NULL,
  `item_number` varchar(50) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `issue` decimal(10,0) NOT NULL,
  `number_prf` int(15) NOT NULL,
  `line` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchase_order_request_detail2_approve`
--

CREATE TABLE `purchase_order_request_detail2_approve` (
  `quantity` double NOT NULL,
  `Price` double NOT NULL,
  `item_number` varchar(50) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `issue` decimal(10,0) NOT NULL,
  `number_prf` int(15) NOT NULL,
  `line` int(11) NOT NULL,
  `Approved_prf_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `satuan`
--

CREATE TABLE `satuan` (
  `satuan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sender_receiver_imn_hardware`
--

CREATE TABLE `sender_receiver_imn_hardware` (
  `sender_receiver` varchar(50) NOT NULL,
  `rec_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `setor`
--

CREATE TABLE `setor` (
  `id` int(11) NOT NULL,
  `penyetor` varchar(50) NOT NULL,
  `tgl_jual` date NOT NULL,
  `tgl_setor` date NOT NULL,
  `total_jual` int(100) NOT NULL,
  `total_setor` int(100) NOT NULL,
  `selisih` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stacking`
--

CREATE TABLE `stacking` (
  `stacking_number` int(11) NOT NULL,
  `destination` varchar(20) NOT NULL,
  `session` varchar(10) NOT NULL,
  `accepted` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `imn_number` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `sem_number` varchar(15) NOT NULL,
  `item_name` varchar(150) NOT NULL,
  `vend_num` varchar(8) NOT NULL,
  `vend_value` varchar(150) NOT NULL,
  `rec_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_lengkap`
--

CREATE TABLE `status_lengkap` (
  `semnumber` varchar(20) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `quantity` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stocklist_hardware`
--

CREATE TABLE `stocklist_hardware` (
  `id` int(11) NOT NULL,
  `item_number` varchar(40) NOT NULL,
  `item_name` varchar(150) DEFAULT NULL,
  `quantity_balance` mediumint(9) DEFAULT NULL,
  `spl_inc` mediumint(9) DEFAULT NULL,
  `bts_area` mediumint(9) NOT NULL,
  `cancel_po` mediumint(9) DEFAULT NULL,
  `po_1920` mediumint(9) DEFAULT NULL,
  `po` mediumint(9) DEFAULT NULL,
  `sample_proto` mediumint(9) DEFAULT NULL,
  `packing` mediumint(9) DEFAULT NULL,
  `sao` mediumint(9) DEFAULT NULL,
  `repair` mediumint(9) DEFAULT NULL,
  `other` mediumint(9) DEFAULT NULL,
  `spo` mediumint(9) DEFAULT NULL,
  `refinishing_to_supplier` mediumint(9) DEFAULT NULL,
  `refinishing_from_supplier` mediumint(9) DEFAULT NULL,
  `refinishing_plus_minus` mediumint(9) DEFAULT NULL,
  `process_ready_pack` mediumint(9) DEFAULT NULL,
  `outstanding_refinishing` mediumint(9) NOT NULL,
  `ready_pack` mediumint(9) NOT NULL,
  `on_hand` mediumint(9) NOT NULL,
  `total` mediumint(9) NOT NULL,
  `kategory` varchar(150) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stocklist_hardware_accesoris`
--

CREATE TABLE `stocklist_hardware_accesoris` (
  `id` int(11) NOT NULL,
  `item_number` varchar(25) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `old_stock` smallint(6) NOT NULL,
  `incoming` smallint(6) NOT NULL,
  `back_to_stock` smallint(6) NOT NULL,
  `packing` smallint(6) NOT NULL,
  `other` smallint(6) NOT NULL,
  `broken` smallint(6) NOT NULL,
  `process` smallint(6) NOT NULL,
  `ready_pack` smallint(6) NOT NULL,
  `on_hand` smallint(6) NOT NULL,
  `total` smallint(6) NOT NULL,
  `kategory` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stocklist_hardware_accesoris_backup`
--

CREATE TABLE `stocklist_hardware_accesoris_backup` (
  `id` int(11) NOT NULL,
  `item_number` varchar(25) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `old_stock` smallint(6) NOT NULL,
  `incoming` smallint(6) NOT NULL,
  `back_to_stock` smallint(6) NOT NULL,
  `packing` smallint(6) NOT NULL,
  `other` smallint(6) NOT NULL,
  `broken` smallint(6) NOT NULL,
  `process` smallint(6) NOT NULL,
  `ready_pack` smallint(6) NOT NULL,
  `on_hand` smallint(6) NOT NULL,
  `total` smallint(6) NOT NULL,
  `kategory` varchar(25) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stocklist_hardware_accesoris_bulanan`
--

CREATE TABLE `stocklist_hardware_accesoris_bulanan` (
  `id` int(11) NOT NULL,
  `item_number` varchar(35) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `old_stock` mediumint(9) NOT NULL,
  `incoming` mediumint(9) NOT NULL,
  `back_to_stock` mediumint(9) NOT NULL,
  `packing` mediumint(9) NOT NULL,
  `other` mediumint(9) NOT NULL,
  `broken` mediumint(9) NOT NULL,
  `new_stock` mediumint(9) NOT NULL,
  `kategory` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stocklist_hardware_accesoris_bulanan_1920`
--

CREATE TABLE `stocklist_hardware_accesoris_bulanan_1920` (
  `id` int(11) NOT NULL,
  `item_number` varchar(35) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `old_stock` mediumint(9) NOT NULL,
  `incoming` mediumint(9) NOT NULL,
  `back_to_stock` mediumint(9) NOT NULL,
  `packing` mediumint(9) NOT NULL,
  `other` mediumint(9) NOT NULL,
  `broken` mediumint(9) NOT NULL,
  `new_stock` mediumint(9) NOT NULL,
  `kategory` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stocklist_hardware_accesoris_transaction`
--

CREATE TABLE `stocklist_hardware_accesoris_transaction` (
  `id` int(11) NOT NULL,
  `item_number` varchar(11) NOT NULL,
  `item_name` varchar(150) NOT NULL,
  `supplier` varchar(50) NOT NULL,
  `note` varchar(150) NOT NULL,
  `date` date NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` varchar(40) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stocklist_hardware_backup`
--

CREATE TABLE `stocklist_hardware_backup` (
  `id` int(11) NOT NULL,
  `item_number` varchar(40) NOT NULL,
  `item_name` varchar(150) DEFAULT NULL,
  `quantity_balance` mediumint(9) DEFAULT NULL,
  `spl_inc` mediumint(9) DEFAULT NULL,
  `bts_area` mediumint(9) NOT NULL,
  `cancel_po` mediumint(9) DEFAULT NULL,
  `po_1920` mediumint(9) DEFAULT NULL,
  `po` mediumint(9) DEFAULT NULL,
  `sample_proto` mediumint(9) DEFAULT NULL,
  `packing` mediumint(9) DEFAULT NULL,
  `sao` mediumint(9) DEFAULT NULL,
  `repair` mediumint(9) DEFAULT NULL,
  `other` mediumint(9) DEFAULT NULL,
  `spo` mediumint(9) DEFAULT NULL,
  `refinishing_to_supplier` mediumint(9) DEFAULT NULL,
  `refinishing_from_supplier` mediumint(9) DEFAULT NULL,
  `refinishing_plus_minus` mediumint(9) DEFAULT NULL,
  `process_ready_pack` mediumint(9) DEFAULT NULL,
  `outstanding_refinishing` mediumint(9) NOT NULL,
  `ready_pack` mediumint(9) NOT NULL,
  `on_hand` mediumint(9) NOT NULL,
  `total` mediumint(9) NOT NULL,
  `kategory` varchar(100) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stocklist_hardware_bulanan`
--

CREATE TABLE `stocklist_hardware_bulanan` (
  `id` int(11) NOT NULL,
  `item_number` varchar(11) NOT NULL,
  `item_name` varchar(150) NOT NULL,
  `quantity_balance` int(11) NOT NULL,
  `spl_inc` int(11) NOT NULL,
  `bts_area` int(11) NOT NULL,
  `po_1920` int(11) NOT NULL,
  `po` int(11) NOT NULL,
  `sample_proto` int(11) NOT NULL,
  `packing` int(11) NOT NULL,
  `sao` int(11) NOT NULL,
  `repair` int(11) NOT NULL,
  `other` int(11) NOT NULL,
  `spo` int(11) NOT NULL,
  `refinishing` int(11) NOT NULL,
  `on_hand` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `kategory` varchar(150) NOT NULL,
  `ready_pack` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stocklist_hardware_bulanan_1920`
--

CREATE TABLE `stocklist_hardware_bulanan_1920` (
  `id` int(11) NOT NULL,
  `item_number` varchar(11) NOT NULL,
  `item_name` varchar(150) NOT NULL,
  `quantity_balance` int(11) NOT NULL,
  `spl_inc` int(11) NOT NULL,
  `bts_area` int(11) NOT NULL,
  `po_1920` int(11) NOT NULL,
  `po` int(11) NOT NULL,
  `sample_proto` int(11) NOT NULL,
  `packing` int(11) NOT NULL,
  `sao` int(11) NOT NULL,
  `repair` int(11) NOT NULL,
  `other` int(11) NOT NULL,
  `spo` int(11) NOT NULL,
  `refinishing` int(11) NOT NULL,
  `on_hand` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `kategory` varchar(150) NOT NULL,
  `ready_pack` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stocklist_hardware_bulanan_2021`
--

CREATE TABLE `stocklist_hardware_bulanan_2021` (
  `id` int(11) NOT NULL,
  `item_number` varchar(11) NOT NULL,
  `item_name` varchar(150) NOT NULL,
  `quantity_balance` int(11) NOT NULL,
  `spl_inc` int(11) NOT NULL,
  `bts_area` int(11) NOT NULL,
  `po_1920` int(11) NOT NULL,
  `po` int(11) NOT NULL,
  `sample_proto` int(11) NOT NULL,
  `packing` int(11) NOT NULL,
  `sao` int(11) NOT NULL,
  `repair` int(11) NOT NULL,
  `other` int(11) NOT NULL,
  `spo` int(11) NOT NULL,
  `refinishing` int(11) NOT NULL,
  `on_hand` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `kategory` varchar(150) NOT NULL,
  `ready_pack` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stocklist_hardware_material`
--

CREATE TABLE `stocklist_hardware_material` (
  `number` int(11) NOT NULL,
  `item_number` varchar(35) NOT NULL,
  `item_name` varchar(80) NOT NULL,
  `old_stock` int(11) NOT NULL,
  `unit` int(11) NOT NULL,
  `incoming` int(11) NOT NULL,
  `back_to_stock` int(11) NOT NULL,
  `ws_ext` int(11) NOT NULL,
  `ws_chair` int(11) NOT NULL,
  `ws_exclusive` int(11) NOT NULL,
  `qc` int(11) NOT NULL,
  `qe` int(11) NOT NULL,
  `stacking` int(11) NOT NULL,
  `hw` int(11) NOT NULL,
  `others` int(11) NOT NULL,
  `qc_inc` int(11) NOT NULL,
  `new_stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stocklist_hardware_ready_article`
--

CREATE TABLE `stocklist_hardware_ready_article` (
  `id` int(11) NOT NULL,
  `job` varchar(35) NOT NULL,
  `customer` varchar(35) NOT NULL,
  `article` varchar(150) NOT NULL,
  `planning` mediumint(9) NOT NULL,
  `item_number` varchar(35) NOT NULL,
  `item_name` varchar(150) NOT NULL,
  `quantity` mediumint(9) NOT NULL,
  `status` varchar(20) NOT NULL,
  `kategory` varchar(35) NOT NULL,
  `date` date NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `line_num` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stocklist_hardware_ready_article_out`
--

CREATE TABLE `stocklist_hardware_ready_article_out` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `job` varchar(35) NOT NULL,
  `customer` varchar(35) NOT NULL,
  `article` varchar(150) NOT NULL,
  `planning` mediumint(9) NOT NULL,
  `item_number` varchar(35) NOT NULL,
  `item_name` varchar(150) NOT NULL,
  `quantity` mediumint(9) NOT NULL,
  `kategory` varchar(30) NOT NULL,
  `item_number_HT` varchar(35) NOT NULL,
  `item_name_HT` varchar(150) NOT NULL,
  `quantity_HT` mediumint(9) NOT NULL,
  `item_number_brass` varchar(35) NOT NULL,
  `item_name_brass` varchar(150) NOT NULL,
  `quantity_brass` mediumint(9) NOT NULL,
  `item_number_leaf` varchar(35) NOT NULL,
  `item_name_leaf` varchar(150) NOT NULL,
  `quantity_leaf` mediumint(9) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `line_num` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stocklist_hardware_transaction`
--

CREATE TABLE `stocklist_hardware_transaction` (
  `id` int(11) NOT NULL,
  `item_number` varchar(11) NOT NULL,
  `item_name` varchar(150) NOT NULL,
  `supplier` varchar(70) NOT NULL,
  `note` varchar(150) NOT NULL,
  `date` date NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` varchar(40) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stocklist_petan_daily`
--

CREATE TABLE `stocklist_petan_daily` (
  `id` int(11) NOT NULL,
  `item_number` varchar(30) NOT NULL,
  `item_name` varchar(150) NOT NULL,
  `unit` varchar(15) NOT NULL,
  `opening_balance` double NOT NULL,
  `from_supplier` double NOT NULL,
  `back_to_stock` double NOT NULL,
  `cancel_po` double NOT NULL,
  `packing` double NOT NULL,
  `sample` double NOT NULL,
  `proto` double NOT NULL,
  `other` double NOT NULL,
  `ending_balance` double NOT NULL,
  `kategory` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stocklist_petan_summary`
--

CREATE TABLE `stocklist_petan_summary` (
  `id` int(11) NOT NULL,
  `item_number` varchar(35) NOT NULL,
  `item_name` varchar(150) NOT NULL,
  `unit` varchar(15) NOT NULL,
  `opening_balance` double NOT NULL,
  `from_supplier` double NOT NULL,
  `back_to_stock` double NOT NULL,
  `cancel_po` double NOT NULL,
  `packing` double NOT NULL,
  `sample` double NOT NULL,
  `proto` double NOT NULL,
  `other` double NOT NULL,
  `ending_balance` double NOT NULL,
  `kategory` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stocklist_petan_summary_1920`
--

CREATE TABLE `stocklist_petan_summary_1920` (
  `id` int(11) NOT NULL,
  `item_number` varchar(35) NOT NULL,
  `item_name` varchar(150) NOT NULL,
  `unit` varchar(15) NOT NULL,
  `opening_balance` double NOT NULL,
  `from_supplier` double NOT NULL,
  `back_to_stock` double NOT NULL,
  `cancel_po` double NOT NULL,
  `packing` double NOT NULL,
  `sample` double NOT NULL,
  `proto` double NOT NULL,
  `other` double NOT NULL,
  `ending_balance` double NOT NULL,
  `kategory` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stocklist_readypack`
--

CREATE TABLE `stocklist_readypack` (
  `id` mediumint(9) NOT NULL,
  `item_number` varchar(35) NOT NULL,
  `item_name` varchar(150) NOT NULL,
  `kategory` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stocklist_readypack_job`
--

CREATE TABLE `stocklist_readypack_job` (
  `id` int(11) NOT NULL,
  `job` varchar(15) NOT NULL,
  `customer` varchar(35) NOT NULL,
  `item_name` varchar(150) NOT NULL,
  `quantity` mediumint(9) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `line_num` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stocklist_readypack_job_detail`
--

CREATE TABLE `stocklist_readypack_job_detail` (
  `id` smallint(6) NOT NULL,
  `item_number` varchar(50) NOT NULL,
  `item_name` varchar(150) NOT NULL,
  `quantity` mediumint(9) NOT NULL,
  `total` mediumint(9) NOT NULL,
  `summary` mediumint(9) NOT NULL,
  `line_num` tinyint(4) NOT NULL,
  `status` varchar(25) NOT NULL,
  `mode` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `vendor_account` varchar(15) NOT NULL,
  `name` varchar(150) NOT NULL,
  `rec_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `table 20`
--

CREATE TABLE `table 20` (
  `COL 1` varchar(7) DEFAULT NULL,
  `COL 2` varchar(12) DEFAULT NULL,
  `COL 3` varchar(34) DEFAULT NULL,
  `COL 4` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tagsummary`
--

CREATE TABLE `tagsummary` (
  `tag_number` varchar(20) CHARACTER SET latin1 NOT NULL,
  `sem_number` varchar(20) CHARACTER SET latin1 NOT NULL,
  `item_name` varchar(350) CHARACTER SET latin1 NOT NULL,
  `quantity` int(20) NOT NULL,
  `satuan` varchar(10) CHARACTER SET latin1 NOT NULL,
  `warehouse` varchar(25) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `level` int(1) NOT NULL,
  `status` int(1) NOT NULL,
  `departement` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Struktur dari tabel `vendor`
--

CREATE TABLE `vendor` (
  `purchid` varchar(12) NOT NULL,
  `OrderAccount` varchar(15) NOT NULL,
  `PurchName` varchar(50) NOT NULL,
  `SCA_Category` varchar(10) NOT NULL,
  `rec_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `warehouse`
--

CREATE TABLE `warehouse` (
  `id` int(11) NOT NULL,
  `name` varchar(10) NOT NULL,
  `summary` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`numberprf`);

--
-- Indexes for table `bill_submission`
--
ALTER TABLE `bill_submission`
  ADD PRIMARY KEY (`number`);

--
-- Indexes for table `bill_submission_detail`
--
ALTER TABLE `bill_submission_detail`
  ADD KEY `number` (`number`);

--
-- Indexes for table `fpr`
--
ALTER TABLE `fpr`
  ADD PRIMARY KEY (`fpr_number`);

--
-- Indexes for table `fpr_detail`
--
ALTER TABLE `fpr_detail`
  ADD KEY `fpr_number` (`fpr_number`);

--
-- Indexes for table `hardware_overview`
--
ALTER TABLE `hardware_overview`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hardware_overview_2021`
--
ALTER TABLE `hardware_overview_2021`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hardware_overview_2122`
--
ALTER TABLE `hardware_overview_2122`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hardware_overview_detail`
--
ALTER TABLE `hardware_overview_detail`
  ADD KEY `id` (`id`);

--
-- Indexes for table `hardware_overview_detail_2021`
--
ALTER TABLE `hardware_overview_detail_2021`
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `hardware_overview_detail_2122`
--
ALTER TABLE `hardware_overview_detail_2122`
  ADD KEY `id` (`id`);

--
-- Indexes for table `hardware_request`
--
ALTER TABLE `hardware_request`
  ADD PRIMARY KEY (`number`);

--
-- Indexes for table `hardware_request_detail`
--
ALTER TABLE `hardware_request_detail`
  ADD KEY `number` (`number`);

--
-- Indexes for table `hdn`
--
ALTER TABLE `hdn`
  ADD PRIMARY KEY (`hdn_number`);

--
-- Indexes for table `hdn_detail`
--
ALTER TABLE `hdn_detail`
  ADD KEY `hdn_number` (`hdn_number`);

--
-- Indexes for table `imn`
--
ALTER TABLE `imn`
  ADD KEY `number` (`number`);

--
-- Indexes for table `imn_hardware`
--
ALTER TABLE `imn_hardware`
  ADD PRIMARY KEY (`number`);

--
-- Indexes for table `imn_hardware_detail`
--
ALTER TABLE `imn_hardware_detail`
  ADD KEY `number` (`number`);

--
-- Indexes for table `imn_incoming`
--
ALTER TABLE `imn_incoming`
  ADD PRIMARY KEY (`number`);

--
-- Indexes for table `imn_incoming_detail`
--
ALTER TABLE `imn_incoming_detail`
  ADD KEY `imn_incoming_detail_ibfk_1` (`number`);

--
-- Indexes for table `imn_lama`
--
ALTER TABLE `imn_lama`
  ADD PRIMARY KEY (`number`);

--
-- Indexes for table `imn_manual`
--
ALTER TABLE `imn_manual`
  ADD KEY `number` (`number`);

--
-- Indexes for table `imn_manual_detail`
--
ALTER TABLE `imn_manual_detail`
  ADD KEY `number` (`number`);

--
-- Indexes for table `inventorytag`
--
ALTER TABLE `inventorytag`
  ADD PRIMARY KEY (`tagnumber`);

--
-- Indexes for table `invoicereceipt`
--
ALTER TABLE `invoicereceipt`
  ADD PRIMARY KEY (`receiptnumber`);

--
-- Indexes for table `item_receive_technical`
--
ALTER TABLE `item_receive_technical`
  ADD PRIMARY KEY (`ir_number`);

--
-- Indexes for table `item_receive_technical_approve`
--
ALTER TABLE `item_receive_technical_approve`
  ADD PRIMARY KEY (`iR_Approve_number`);

--
-- Indexes for table `item_receive_technical_detail`
--
ALTER TABLE `item_receive_technical_detail`
  ADD KEY `ir_number` (`ir_number`);

--
-- Indexes for table `item_receive_technical_detail_approve`
--
ALTER TABLE `item_receive_technical_detail_approve`
  ADD KEY `iR_Approve_number` (`iR_Approve_number`);

--
-- Indexes for table `itr`
--
ALTER TABLE `itr`
  ADD PRIMARY KEY (`number`);

--
-- Indexes for table `itr_detail`
--
ALTER TABLE `itr_detail`
  ADD KEY `number` (`number`);

--
-- Indexes for table `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`rec_id`);

--
-- Indexes for table `material_request_icp`
--
ALTER TABLE `material_request_icp`
  ADD PRIMARY KEY (`number`);

--
-- Indexes for table `material_request_icp_detail`
--
ALTER TABLE `material_request_icp_detail`
  ADD KEY `material_request_icp_detail_ibfk_1` (`number`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD KEY `prf_number` (`prf_number`),
  ADD KEY `prf_number1` (`prf_number1`);

--
-- Indexes for table `purchase_approve`
--
ALTER TABLE `purchase_approve`
  ADD KEY `Approved_prf_number` (`Approved_prf_number`);

--
-- Indexes for table `purchase_detail`
--
ALTER TABLE `purchase_detail`
  ADD PRIMARY KEY (`prf_number`),
  ADD KEY `prf_number_relasi` (`prf_number_relasi`);

--
-- Indexes for table `purchase_detail_approve`
--
ALTER TABLE `purchase_detail_approve`
  ADD PRIMARY KEY (`Approved_prf_number`),
  ADD KEY `prf_number_relasi` (`prf_number_relasi`);

--
-- Indexes for table `purchase_order`
--
ALTER TABLE `purchase_order`
  ADD PRIMARY KEY (`number`);

--
-- Indexes for table `purchase_order_approve`
--
ALTER TABLE `purchase_order_approve`
  ADD PRIMARY KEY (`purchase_order_approve`);

--
-- Indexes for table `purchase_order_detail`
--
ALTER TABLE `purchase_order_detail`
  ADD KEY `number` (`number`);

--
-- Indexes for table `purchase_order_detail_approve`
--
ALTER TABLE `purchase_order_detail_approve`
  ADD KEY `purchase_order_detail_approve` (`purchase_order_detail_approve`);

--
-- Indexes for table `purchase_order_request`
--
ALTER TABLE `purchase_order_request`
  ADD PRIMARY KEY (`Number_PRF`);

--
-- Indexes for table `purchase_order_request_approve`
--
ALTER TABLE `purchase_order_request_approve`
  ADD PRIMARY KEY (`Approved_prf_number`);

--
-- Indexes for table `purchase_order_request_detail1`
--
ALTER TABLE `purchase_order_request_detail1`
  ADD KEY `number_prf` (`number_prf`);

--
-- Indexes for table `purchase_order_request_detail1_approve`
--
ALTER TABLE `purchase_order_request_detail1_approve`
  ADD KEY `Approved_prf_number` (`Approved_prf_number`);

--
-- Indexes for table `purchase_order_request_detail2`
--
ALTER TABLE `purchase_order_request_detail2`
  ADD KEY `number_prf` (`number_prf`);

--
-- Indexes for table `purchase_order_request_detail2_approve`
--
ALTER TABLE `purchase_order_request_detail2_approve`
  ADD KEY `Approved_prf_number` (`Approved_prf_number`);

--
-- Indexes for table `setor`
--
ALTER TABLE `setor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stacking`
--
ALTER TABLE `stacking`
  ADD PRIMARY KEY (`rec_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`rec_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `numberprf` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `bill_submission`
--
ALTER TABLE `bill_submission`
  MODIFY `number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `fpr`
--
ALTER TABLE `fpr`
  MODIFY `fpr_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108920;
--
-- AUTO_INCREMENT for table `hardware_overview`
--
ALTER TABLE `hardware_overview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=532;
--
-- AUTO_INCREMENT for table `hardware_overview_2021`
--
ALTER TABLE `hardware_overview_2021`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=610;
--
-- AUTO_INCREMENT for table `hardware_overview_2122`
--
ALTER TABLE `hardware_overview_2122`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=622;
--
-- AUTO_INCREMENT for table `hardware_request`
--
ALTER TABLE `hardware_request`
  MODIFY `number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3659;
--
-- AUTO_INCREMENT for table `hdn`
--
ALTER TABLE `hdn`
  MODIFY `hdn_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121888;
--
-- AUTO_INCREMENT for table `imn_hardware`
--
ALTER TABLE `imn_hardware`
  MODIFY `number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217608;
--
-- AUTO_INCREMENT for table `imn_incoming`
--
ALTER TABLE `imn_incoming`
  MODIFY `number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219375;
--
-- AUTO_INCREMENT for table `imn_manual`
--
ALTER TABLE `imn_manual`
  MODIFY `number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184613;
--
-- AUTO_INCREMENT for table `invoicereceipt`
--
ALTER TABLE `invoicereceipt`
  MODIFY `receiptnumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54852;
--
-- AUTO_INCREMENT for table `item_receive_technical`
--
ALTER TABLE `item_receive_technical`
  MODIFY `ir_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160780;
--
-- AUTO_INCREMENT for table `item_receive_technical_approve`
--
ALTER TABLE `item_receive_technical_approve`
  MODIFY `iR_Approve_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2916;
--
-- AUTO_INCREMENT for table `itr`
--
ALTER TABLE `itr`
  MODIFY `number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170507;
--
-- AUTO_INCREMENT for table `list`
--
ALTER TABLE `list`
  MODIFY `rec_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2193;
--
-- AUTO_INCREMENT for table `material_request_icp`
--
ALTER TABLE `material_request_icp`
  MODIFY `number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `purchase_detail`
--
ALTER TABLE `purchase_detail`
  MODIFY `prf_number` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9615;
--
-- AUTO_INCREMENT for table `purchase_detail_approve`
--
ALTER TABLE `purchase_detail_approve`
  MODIFY `Approved_prf_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5224;
--
-- AUTO_INCREMENT for table `purchase_order`
--
ALTER TABLE `purchase_order`
  MODIFY `number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10327;
--
-- AUTO_INCREMENT for table `purchase_order_approve`
--
ALTER TABLE `purchase_order_approve`
  MODIFY `purchase_order_approve` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1393;
--
-- AUTO_INCREMENT for table `setor`
--
ALTER TABLE `setor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `stacking`
--
ALTER TABLE `stacking`
  MODIFY `rec_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34256;
--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `rec_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1180;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `bill_submission_detail`
--
ALTER TABLE `bill_submission_detail`
  ADD CONSTRAINT `bill_submission_detail_ibfk_1` FOREIGN KEY (`number`) REFERENCES `bill_submission` (`number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `fpr_detail`
--
ALTER TABLE `fpr_detail`
  ADD CONSTRAINT `fpr_detail_ibfk_1` FOREIGN KEY (`fpr_number`) REFERENCES `fpr` (`fpr_number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `hardware_overview_detail`
--
ALTER TABLE `hardware_overview_detail`
  ADD CONSTRAINT `hardware_overview_detail_ibfk_1` FOREIGN KEY (`id`) REFERENCES `hardware_overview` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `hardware_overview_detail_2021`
--
ALTER TABLE `hardware_overview_detail_2021`
  ADD CONSTRAINT `hardware_overview_detail_2021_ibfk_1` FOREIGN KEY (`id`) REFERENCES `hardware_overview_2021` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `hardware_overview_detail_2122`
--
ALTER TABLE `hardware_overview_detail_2122`
  ADD CONSTRAINT `hardware_overview_detail_2122_ibfk_1` FOREIGN KEY (`id`) REFERENCES `hardware_overview_2122` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `hardware_request_detail`
--
ALTER TABLE `hardware_request_detail`
  ADD CONSTRAINT `hardware_request_detail_ibfk_1` FOREIGN KEY (`number`) REFERENCES `hardware_request` (`number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `hdn_detail`
--
ALTER TABLE `hdn_detail`
  ADD CONSTRAINT `hdn_detail_ibfk_1` FOREIGN KEY (`hdn_number`) REFERENCES `hdn` (`hdn_number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `imn_hardware_detail`
--
ALTER TABLE `imn_hardware_detail`
  ADD CONSTRAINT `imn_hardware_detail_ibfk_1` FOREIGN KEY (`number`) REFERENCES `imn_hardware` (`number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `imn_incoming_detail`
--
ALTER TABLE `imn_incoming_detail`
  ADD CONSTRAINT `imn_incoming_detail_ibfk_1` FOREIGN KEY (`number`) REFERENCES `imn_incoming` (`number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `imn_manual_detail`
--
ALTER TABLE `imn_manual_detail`
  ADD CONSTRAINT `imn_manual_detail_ibfk_1` FOREIGN KEY (`number`) REFERENCES `imn_manual` (`number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `item_receive_technical_detail`
--
ALTER TABLE `item_receive_technical_detail`
  ADD CONSTRAINT `item_receive_technical_detail_ibfk_1` FOREIGN KEY (`ir_number`) REFERENCES `item_receive_technical` (`ir_number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `item_receive_technical_detail_approve`
--
ALTER TABLE `item_receive_technical_detail_approve`
  ADD CONSTRAINT `item_receive_technical_detail_approve_ibfk_1` FOREIGN KEY (`iR_Approve_number`) REFERENCES `item_receive_technical_approve` (`iR_Approve_number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `itr_detail`
--
ALTER TABLE `itr_detail`
  ADD CONSTRAINT `itr_detail_ibfk_1` FOREIGN KEY (`number`) REFERENCES `itr` (`number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `material_request_icp_detail`
--
ALTER TABLE `material_request_icp_detail`
  ADD CONSTRAINT `material_request_icp_detail_ibfk_1` FOREIGN KEY (`number`) REFERENCES `material_request_icp` (`number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `purchase_ibfk_1` FOREIGN KEY (`prf_number`) REFERENCES `purchase_detail` (`prf_number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `purchase_detail_approve`
--
ALTER TABLE `purchase_detail_approve`
  ADD CONSTRAINT `PRF_number_relasi` FOREIGN KEY (`prf_number_relasi`) REFERENCES `purchase_approve` (`Approved_prf_number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `purchase_order_detail`
--
ALTER TABLE `purchase_order_detail`
  ADD CONSTRAINT `purchase_order_detail_ibfk_1` FOREIGN KEY (`number`) REFERENCES `purchase_order` (`number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `purchase_order_request_detail1`
--
ALTER TABLE `purchase_order_request_detail1`
  ADD CONSTRAINT `purchase_order_request_detail1_ibfk_1` FOREIGN KEY (`number_prf`) REFERENCES `purchase_order_request` (`Number_PRF`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `purchase_order_request_detail1_approve`
--
ALTER TABLE `purchase_order_request_detail1_approve`
  ADD CONSTRAINT `purchase_order_request_detail1_approve_ibfk_1` FOREIGN KEY (`Approved_prf_number`) REFERENCES `purchase_order_request_approve` (`Approved_prf_number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `purchase_order_request_detail2`
--
ALTER TABLE `purchase_order_request_detail2`
  ADD CONSTRAINT `purchase_order_request_detail2_ibfk_1` FOREIGN KEY (`number_prf`) REFERENCES `purchase_order_request` (`Number_PRF`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `purchase_order_request_detail2_approve`
--
ALTER TABLE `purchase_order_request_detail2_approve`
  ADD CONSTRAINT `purchase_order_request_detail2_approve_ibfk_1` FOREIGN KEY (`Approved_prf_number`) REFERENCES `purchase_order_request_approve` (`Approved_prf_number`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
