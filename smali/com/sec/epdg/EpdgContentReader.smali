.class public Lcom/sec/epdg/EpdgContentReader;
.super Ljava/lang/Object;
.source "EpdgContentReader.java"


# static fields
.field private static SUB_TAG:Ljava/lang/String;

.field private static mInstance:Lcom/sec/epdg/EpdgContentReader;

.field private static mInstance2:Lcom/sec/epdg/EpdgContentReader;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mEpdgSettings:Lcom/sec/epdg/EpdgSettings;

.field private mIWlanApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/epdg/IWlanApnSetting;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-string v0, "[DBREADER]"

    sput-object v0, Lcom/sec/epdg/EpdgContentReader;->SUB_TAG:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/epdg/EpdgContentReader;->mInstance:Lcom/sec/epdg/EpdgContentReader;

    .line 47
    sput-object v0, Lcom/sec/epdg/EpdgContentReader;->mInstance2:Lcom/sec/epdg/EpdgContentReader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/EpdgContentReader;->mIWlanApns:Ljava/util/ArrayList;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/EpdgContentReader;->mEpdgSettings:Lcom/sec/epdg/EpdgSettings;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/epdg/EpdgContentReader;->TAG:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/epdg/EpdgContentReader;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgContentReader;->TAG:Ljava/lang/String;

    .line 51
    iput p1, p0, Lcom/sec/epdg/EpdgContentReader;->mPhoneId:I

    .line 52
    return-void
.end method

.method private addEpdgSetting(Landroid/database/Cursor;Landroid/content/Context;)V
    .locals 226
    .param p1, "messagesCursor"    # Landroid/database/Cursor;
    .param p2, "mContext"    # Landroid/content/Context;

    .line 688
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v1, Lcom/sec/epdg/EpdgContentReader;->mPhoneId:I

    const/4 v3, 0x1

    add-int/lit8 v4, v0, 0x1

    .line 689
    .local v4, "slotId":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_SMARTWIFI_RSSI_A:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 690
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 689
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 691
    .local v5, "strWifiRssiA":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 692
    .local v15, "wifiRssiA":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_SMARTWIFI_RSSI_B:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 693
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 692
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v82

    .line 694
    .local v82, "strWifiRssiB":Ljava/lang/String;
    invoke-static/range {v82 .. v82}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 695
    .local v14, "wifiRssiB":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_SMARTWIFI_RSSI_C:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 696
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 695
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v83

    .line 697
    .local v83, "strWifiRssiC":Ljava/lang/String;
    invoke-static/range {v83 .. v83}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 698
    .local v13, "wifiRssiC":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_SMARTWIFI_RSSI_ROVEIN_WIFIONLY:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 699
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 698
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v84

    .line 700
    .local v84, "strWifiRssiRoveInWifiOnly":Ljava/lang/String;
    invoke-static/range {v84 .. v84}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 701
    .local v12, "wifiRssiRoveInWifiOnly":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_SMARTWIFI_RSSI_ROVEOUT_WIFIONLY:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 702
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 701
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v85

    .line 703
    .local v85, "strWifiRssiRoveOutWifiOnly":Ljava/lang/String;
    invoke-static/range {v85 .. v85}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 704
    .local v11, "wifiRssiRoveOutWifiOnly":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_SMARTWIFI_RSSI_ROVEIN_VOICE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 705
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 704
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v86

    .line 706
    .local v86, "strWifiRssiRoveInVoice":Ljava/lang/String;
    invoke-static/range {v86 .. v86}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 707
    .local v10, "wifiRssiRoveInVoice":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_SMARTWIFI_LTE_RSRP1:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 708
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 707
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v87

    .line 709
    .local v87, "strLteRsrp1":Ljava/lang/String;
    invoke-static/range {v87 .. v87}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 710
    .local v9, "lteRsrp1":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_SMARTWIFI_LTE_RSRP2:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 711
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 710
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v88

    .line 712
    .local v88, "strLteRsrp2":Ljava/lang/String;
    invoke-static/range {v88 .. v88}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 713
    .local v8, "lteRsrp2":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_SMARTWIFI_LTE_RSRP3:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 714
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 713
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v89

    .line 715
    .local v89, "strLteRsrp3":Ljava/lang/String;
    invoke-static/range {v89 .. v89}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 716
    .local v7, "lteRsrp3":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_SMARTWIFI_LTE_RSRQ_ROVEOUT:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 717
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 716
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v90

    .line 718
    .local v90, "strLteRsrqRoveout":Ljava/lang/String;
    invoke-static/range {v90 .. v90}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 719
    .local v6, "lteRsrqRoveout":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_SMARTWIFI_LTE_RSRQ_ROVEIN_WEAK:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 720
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 719
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v91

    .line 721
    .local v91, "strLteRsrqRoveinWeak":Ljava/lang/String;
    invoke-static/range {v91 .. v91}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 722
    .local v3, "lteRsrqRoveinWeak":I
    sget-object v16, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_SMARTWIFI_LTE_RSRQ_ROVEIN:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 723
    invoke-virtual/range {v16 .. v16}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 722
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v92

    .line 724
    .local v92, "strLteRsrqRovein":Ljava/lang/String;
    move-object/from16 v93, v5

    .end local v5    # "strWifiRssiA":Ljava/lang/String;
    .local v93, "strWifiRssiA":Ljava/lang/String;
    invoke-static/range {v92 .. v92}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 725
    .local v5, "lteRsrqRovein":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_SMARTWIFI_CDMA_RSSI:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 726
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 725
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v94

    .line 727
    .local v94, "strCdmaRssi":Ljava/lang/String;
    move/from16 v95, v5

    .end local v5    # "lteRsrqRovein":I
    .local v95, "lteRsrqRovein":I
    invoke-static/range {v94 .. v94}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 729
    .local v5, "cdmaRssi":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_SMARTWIFI_PING_ADDRESS:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 730
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 729
    move/from16 v96, v5

    .end local v5    # "cdmaRssi":I
    .local v96, "cdmaRssi":I
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 731
    .local v5, "strPingAddress":Ljava/lang/String;
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_SMARTWIFI_PKT_LOSS_PERCENT_L2W:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 732
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 731
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v97

    .line 733
    .local v97, "strPktLossPercentL2w":Ljava/lang/String;
    move-object/from16 v98, v5

    .end local v5    # "strPingAddress":Ljava/lang/String;
    .local v98, "strPingAddress":Ljava/lang/String;
    invoke-static/range {v97 .. v97}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 734
    .local v5, "pktLossPercentL2w":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_SMARTWIFI_PKT_LOSS_PERCENT_W2L:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 735
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 734
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v99

    .line 736
    .local v99, "strPktLossPercentW2l":Ljava/lang/String;
    move/from16 v100, v5

    .end local v5    # "pktLossPercentL2w":I
    .local v100, "pktLossPercentL2w":I
    invoke-static/range {v99 .. v99}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 737
    .local v5, "pktLossPercentW2l":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_THRESHOLD_PING_RTT_W2L:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 738
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 737
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v101

    .line 739
    .local v101, "strThresholdpingrttW2l":Ljava/lang/String;
    move/from16 v102, v5

    .end local v5    # "pktLossPercentW2l":I
    .local v102, "pktLossPercentW2l":I
    invoke-static/range {v101 .. v101}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 740
    .local v5, "thresholdpingrttW2l":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_PING_PACKET_COUNT:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 741
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 740
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v103

    .line 742
    .local v103, "strPingpacketcount":Ljava/lang/String;
    move/from16 v104, v5

    .end local v5    # "thresholdpingrttW2l":I
    .local v104, "thresholdpingrttW2l":I
    invoke-static/range {v103 .. v103}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 743
    .local v5, "pingpacketcount":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_PING_PAKCET_TIMEOUT:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 744
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 743
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v105

    .line 745
    .local v105, "strPingpackettimeout":Ljava/lang/String;
    move/from16 v106, v5

    .end local v5    # "pingpacketcount":I
    .local v106, "pingpacketcount":I
    invoke-static/range {v105 .. v105}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 746
    .local v5, "pingpackettimeout":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_RTPRTCP_LOSS_RATE_PERCENT:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 747
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 746
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v107

    .line 748
    .local v107, "strRtprtcplossratepercent":Ljava/lang/String;
    move/from16 v108, v5

    .end local v5    # "pingpackettimeout":I
    .local v108, "pingpackettimeout":I
    invoke-static/range {v107 .. v107}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 749
    .local v5, "rtprtcplossratepercent":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_RTPRTCP_LOSS_MAXCNT:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 750
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 749
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v109

    .line 751
    .local v109, "strRrtprtcplossmaxcnt":Ljava/lang/String;
    move/from16 v110, v5

    .end local v5    # "rtprtcplossratepercent":I
    .local v110, "rtprtcplossratepercent":I
    invoke-static/range {v109 .. v109}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 752
    .local v5, "rtprtcplossmaxcnt":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_THRESHOLD_DPD_LATENCY:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 753
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 752
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v111

    .line 754
    .local v111, "strThresholddpdlatency":Ljava/lang/String;
    move/from16 v112, v5

    .end local v5    # "rtprtcplossmaxcnt":I
    .local v112, "rtprtcplossmaxcnt":I
    invoke-static/range {v111 .. v111}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 755
    .local v5, "thresholddpdlatency":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_THRESHOLD_4G_ROVE_IN:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 756
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 755
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v113

    .line 757
    .local v113, "strThreshold4gRoveIn":Ljava/lang/String;
    move/from16 v114, v5

    .end local v5    # "thresholddpdlatency":I
    .local v114, "thresholddpdlatency":I
    invoke-static/range {v113 .. v113}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 758
    .local v5, "threshold4gRoveIn":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_THRESHOLD_4G_ROVE_OUT:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 759
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 758
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v115

    .line 760
    .local v115, "strThreshold4gRoveOut":Ljava/lang/String;
    move/from16 v116, v5

    .end local v5    # "threshold4gRoveIn":I
    .local v116, "threshold4gRoveIn":I
    invoke-static/range {v115 .. v115}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 761
    .local v5, "threshold4gRoveOut":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_THRESHOLD_3G_ROVE_IN:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 762
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 761
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v117

    .line 763
    .local v117, "strThreshold3gRoveIn":Ljava/lang/String;
    move/from16 v118, v5

    .end local v5    # "threshold4gRoveOut":I
    .local v118, "threshold4gRoveOut":I
    invoke-static/range {v117 .. v117}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 764
    .local v5, "threshold3gRoveIn":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_THRESHOLD_3G_ROVE_OUT:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 765
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 764
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v119

    .line 766
    .local v119, "strThreshold3gRoveOut":Ljava/lang/String;
    move/from16 v120, v5

    .end local v5    # "threshold3gRoveIn":I
    .local v120, "threshold3gRoveIn":I
    invoke-static/range {v119 .. v119}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 767
    .local v5, "threshold3gRoveOut":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_THRESHOLD_2G_ROVE_IN:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 768
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 767
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v121

    .line 769
    .local v121, "strThreshold2gRoveIn":Ljava/lang/String;
    move/from16 v122, v5

    .end local v5    # "threshold3gRoveOut":I
    .local v122, "threshold3gRoveOut":I
    invoke-static/range {v121 .. v121}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 770
    .local v5, "threshold2gRoveIn":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_THRESHOLD_2G_ROVE_OUT:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 771
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 770
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v123

    .line 772
    .local v123, "strThreshold2gRoveOut":Ljava/lang/String;
    move/from16 v124, v5

    .end local v5    # "threshold2gRoveIn":I
    .local v124, "threshold2gRoveIn":I
    invoke-static/range {v123 .. v123}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 773
    .local v5, "threshold2gRoveOut":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_SMARTWIFI_LTE_SNR_ROVEIN:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 774
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 773
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v125

    .line 775
    .local v125, "strThresholdSnrIn":Ljava/lang/String;
    move/from16 v126, v5

    .end local v5    # "threshold2gRoveOut":I
    .local v126, "threshold2gRoveOut":I
    invoke-static/range {v125 .. v125}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 776
    .local v5, "thresholdSnrIn":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_SMARTWIFI_LTE_SNR_ROVEOUT:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 777
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 776
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v127

    .line 778
    .local v127, "strThresholdSnrOut":Ljava/lang/String;
    move/from16 v128, v5

    .end local v5    # "thresholdSnrIn":I
    .local v128, "thresholdSnrIn":I
    invoke-static/range {v127 .. v127}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 779
    .local v5, "thresholdSnrOut":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_SMARTWIFI_GSM_ECIO_ROVEIN:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 780
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 779
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v129

    .line 781
    .local v129, "strThresholdEcioIn":Ljava/lang/String;
    move/from16 v130, v5

    .end local v5    # "thresholdSnrOut":I
    .local v130, "thresholdSnrOut":I
    invoke-static/range {v129 .. v129}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 782
    .local v5, "thresholdEcioIn":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_SMARTWIFI_GSM_ECIO_ROVEOUT:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 783
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 782
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v131

    .line 784
    .local v131, "strThresholdEcioOut":Ljava/lang/String;
    move/from16 v132, v5

    .end local v5    # "thresholdEcioIn":I
    .local v132, "thresholdEcioIn":I
    invoke-static/range {v131 .. v131}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 785
    .local v5, "thresholdEcioOut":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_SYS_SEL_TIMER:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 786
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 785
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v133

    .line 787
    .local v133, "strSysSelTimer":Ljava/lang/String;
    move/from16 v134, v5

    .end local v5    # "thresholdEcioOut":I
    .local v134, "thresholdEcioOut":I
    invoke-static/range {v133 .. v133}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 788
    .local v5, "sysSelTimer":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_TEPDG_LTE_TIMER:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 789
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 788
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v135

    .line 790
    .local v135, "strTepdgLteTimer":Ljava/lang/String;
    move/from16 v136, v5

    .end local v5    # "sysSelTimer":I
    .local v136, "sysSelTimer":I
    invoke-static/range {v135 .. v135}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 791
    .local v5, "tepdgLteTimer":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_TEPDG_1X_TIMER:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 792
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 791
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v137

    .line 793
    .local v137, "strTepdg1xTimer":Ljava/lang/String;
    move/from16 v138, v5

    .end local v5    # "tepdgLteTimer":I
    .local v138, "tepdgLteTimer":I
    invoke-static/range {v137 .. v137}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 794
    .local v5, "tepdg1xTimer":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_TEPDG_1X_SCAN_TIMER:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 795
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 794
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v139

    .line 796
    .local v139, "strTepdg1xScanTimer":Ljava/lang/String;
    move/from16 v140, v5

    .end local v5    # "tepdg1xTimer":I
    .local v140, "tepdg1xTimer":I
    invoke-static/range {v139 .. v139}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 797
    .local v5, "tepdg1xScanTimer":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_HO_DELAY_TIMER:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 798
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 797
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v141

    .line 799
    .local v141, "strHoDelayTimer":Ljava/lang/String;
    move/from16 v142, v5

    .end local v5    # "tepdg1xScanTimer":I
    .local v142, "tepdg1xScanTimer":I
    invoke-static/range {v141 .. v141}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 800
    .local v5, "hoDelayTimer":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_WIFI_IP_CONFIG_TIMER:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 801
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 800
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v143

    .line 802
    .local v143, "strWifiIpConfigTimer":Ljava/lang/String;
    move/from16 v144, v5

    .end local v5    # "hoDelayTimer":I
    .local v144, "hoDelayTimer":I
    invoke-static/range {v143 .. v143}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 803
    .local v5, "wifiIpConfigTimer":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_TEPDG_QUALITY_CHECK_TIMER:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 804
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 803
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v145

    .line 805
    .local v145, "strQualityCheckTimer":Ljava/lang/String;
    move/from16 v146, v5

    .end local v5    # "wifiIpConfigTimer":I
    .local v146, "wifiIpConfigTimer":I
    invoke-static/range {v145 .. v145}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 806
    .local v5, "qualityCheckTimer":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_TEPDG_LTE_MEASUREMENT_TIMER:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 807
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 806
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v147

    .line 808
    .local v147, "strTepdgLteMeasurementTimer":Ljava/lang/String;
    move/from16 v148, v5

    .end local v5    # "qualityCheckTimer":I
    .local v148, "qualityCheckTimer":I
    invoke-static/range {v147 .. v147}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 809
    .local v5, "tepdgLteMeasurementTimer":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_TEPDG_LTE_MEASUREMENT_COUNT:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 810
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 809
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v149

    .line 811
    .local v149, "strTepdgLteMeasurementCount":Ljava/lang/String;
    move/from16 v150, v5

    .end local v5    # "tepdgLteMeasurementTimer":I
    .local v150, "tepdgLteMeasurementTimer":I
    invoke-static/range {v149 .. v149}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 812
    .local v5, "tepdgLteMeasurementCount":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_TEPDG_WIFI_MEASUREMENT_TIMER:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 813
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 812
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v151

    .line 814
    .local v151, "strTepdgWifiMeasurementTimer":Ljava/lang/String;
    move/from16 v152, v5

    .end local v5    # "tepdgLteMeasurementCount":I
    .local v152, "tepdgLteMeasurementCount":I
    invoke-static/range {v151 .. v151}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 815
    .local v5, "tepdgWifiMeasurementTimer":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_TEPDG_WIFI_MEASUREMENT_COUNT:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 816
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 815
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v153

    .line 817
    .local v153, "strTepdgWifiMeasurementCount":Ljava/lang/String;
    move/from16 v154, v5

    .end local v5    # "tepdgWifiMeasurementTimer":I
    .local v154, "tepdgWifiMeasurementTimer":I
    invoke-static/range {v153 .. v153}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 818
    .local v5, "tepdgWifiMeasurementCount":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_IDI_MAC:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 819
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 818
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v155

    .line 820
    .local v155, "strIdiMac":Ljava/lang/String;
    invoke-static/range {v155 .. v155}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v156

    .line 821
    .local v156, "idiMac":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_IDI_IMSI:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 822
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 821
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v157

    .line 823
    .local v157, "strIdiImsi":Ljava/lang/String;
    invoke-static/range {v157 .. v157}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v158

    .line 824
    .local v158, "idiImsi":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_DATA_RETRY_ENABLED:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 825
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 824
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v159

    .line 826
    .local v159, "strIsDataRetryEnabled":Ljava/lang/String;
    invoke-static/range {v159 .. v159}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v16, 0x0

    move/from16 v18, v6

    const/4 v6, 0x1

    .end local v6    # "lteRsrqRoveout":I
    .local v18, "lteRsrqRoveout":I
    if-ne v0, v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move/from16 v6, v16

    .line 827
    .local v6, "isRetryEnabledForAlwaysOnApn":Z
    :goto_0
    sget-object v17, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_SMARTWIFI_TIMER:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 828
    invoke-virtual/range {v17 .. v17}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 827
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v160

    .line 829
    .local v160, "strSmartWifiTimer":Ljava/lang/String;
    move/from16 v161, v5

    .end local v5    # "tepdgWifiMeasurementCount":I
    .local v161, "tepdgWifiMeasurementCount":I
    invoke-static/range {v160 .. v160}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 830
    .local v5, "smartWifiTimer":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_KEEP_ALIVE_TIMER:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 831
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 830
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v162

    .line 832
    .local v162, "strkeepAliveTimer":Ljava/lang/String;
    move/from16 v163, v5

    .end local v5    # "smartWifiTimer":I
    .local v163, "smartWifiTimer":I
    invoke-static/range {v162 .. v162}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 834
    .local v5, "keepAliveTimer":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_EPDG_SERVER_IP:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 835
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 834
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v164

    .line 836
    .local v164, "epdgServerIp":Ljava/lang/String;
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_DYNAMIC_FQDN_ENABLED:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 837
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 836
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v165

    .line 838
    .local v165, "strIsDynamicFqdn":Ljava/lang/String;
    invoke-static/range {v165 .. v165}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v17, v6

    const/4 v6, 0x1

    .end local v6    # "isRetryEnabledForAlwaysOnApn":Z
    .local v17, "isRetryEnabledForAlwaysOnApn":Z
    if-ne v0, v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    move/from16 v6, v16

    .line 840
    .local v6, "isDynamicFqdn":Z
    :goto_1
    sget-object v19, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_DYNAMIC_USER_FQDN_ENABLED:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 841
    invoke-virtual/range {v19 .. v19}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 840
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v166

    .line 842
    .local v166, "strIsDynamicUserFqdn":Ljava/lang/String;
    invoke-static/range {v166 .. v166}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v19, v6

    const/4 v6, 0x1

    .end local v6    # "isDynamicFqdn":Z
    .local v19, "isDynamicFqdn":Z
    if-ne v0, v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    move/from16 v6, v16

    .line 844
    .local v6, "isDynamicUserFqdn":Z
    :goto_2
    sget-object v20, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_SMART_WIFI_ANS_INTEGRATION:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 845
    invoke-virtual/range {v20 .. v20}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 844
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v167

    .line 846
    .local v167, "strIsAnsIntegrationEnabled":Ljava/lang/String;
    invoke-static/range {v167 .. v167}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v20, v6

    const/4 v6, 0x1

    .end local v6    # "isDynamicUserFqdn":Z
    .local v20, "isDynamicUserFqdn":Z
    if-ne v0, v6, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    move/from16 v6, v16

    .line 848
    .local v6, "isAnsIntegrationEnabled":Z
    :goto_3
    sget-object v21, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_SMART_WIFI_RTCP_INTEGRATION:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 849
    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 848
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v168

    .line 850
    .local v168, "strIsRtcpIntegrationEnabled":Ljava/lang/String;
    nop

    .line 851
    invoke-static/range {v168 .. v168}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v21, v6

    const/4 v6, 0x1

    .end local v6    # "isAnsIntegrationEnabled":Z
    .local v21, "isAnsIntegrationEnabled":Z
    if-ne v0, v6, :cond_4

    const/4 v6, 0x1

    goto :goto_4

    :cond_4
    move/from16 v6, v16

    .line 853
    .local v6, "isRtcpIntegrationEnabled":Z
    :goto_4
    sget-object v22, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_BROADCAST_HO_RESULT:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 854
    invoke-virtual/range {v22 .. v22}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 853
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v169

    .line 855
    .local v169, "strIsBroadcastHONotiEnabled":Ljava/lang/String;
    nop

    .line 856
    invoke-static/range {v169 .. v169}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v22, v6

    const/4 v6, 0x1

    .end local v6    # "isRtcpIntegrationEnabled":Z
    .local v22, "isRtcpIntegrationEnabled":Z
    if-ne v0, v6, :cond_5

    const/4 v6, 0x1

    goto :goto_5

    :cond_5
    move/from16 v6, v16

    .line 857
    .local v6, "isBroadcastHONotiEnabled":Z
    :goto_5
    sget-object v23, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_ATTACH_PDN:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 858
    invoke-virtual/range {v23 .. v23}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 857
    move/from16 v170, v5

    .end local v5    # "keepAliveTimer":I
    .local v170, "keepAliveTimer":I
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 859
    .local v5, "attachPdn":Ljava/lang/String;
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_ALWAYSON_APNTYPE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 860
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 859
    move-object/from16 v171, v5

    .end local v5    # "attachPdn":Ljava/lang/String;
    .local v171, "attachPdn":Ljava/lang/String;
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 862
    .local v5, "alwaysOnApn":Ljava/lang/String;
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_VOWIFI_PREF:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 863
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 862
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v172

    .line 864
    .local v172, "strIsVowifiOn":Ljava/lang/String;
    nop

    .line 865
    invoke-static/range {v172 .. v172}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v23, v6

    const/4 v6, 0x1

    .end local v6    # "isBroadcastHONotiEnabled":Z
    .local v23, "isBroadcastHONotiEnabled":Z
    if-ne v0, v6, :cond_6

    const/4 v6, 0x1

    goto :goto_6

    :cond_6
    move/from16 v6, v16

    .line 866
    .local v6, "isVowifiOn":Z
    :goto_6
    sget-object v24, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_ON_DEMAND_PDN_HANDOFF:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 867
    invoke-virtual/range {v24 .. v24}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 866
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v173

    .line 868
    .local v173, "strIsOnDemandPdnHandoff":Ljava/lang/String;
    invoke-static/range {v173 .. v173}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v24, v6

    const/4 v6, 0x1

    .end local v6    # "isVowifiOn":Z
    .local v24, "isVowifiOn":Z
    if-ne v0, v6, :cond_7

    const/4 v6, 0x1

    goto :goto_7

    :cond_7
    move/from16 v6, v16

    .line 870
    .local v6, "isOnDemandPdnHandoff":Z
    :goto_7
    sget-object v25, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_IS_THROTTLE_ENABLED:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 871
    invoke-virtual/range {v25 .. v25}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 870
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v174

    .line 872
    .local v174, "strIsThrottlingEnabled":Ljava/lang/String;
    invoke-static/range {v174 .. v174}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v25, v6

    const/4 v6, 0x1

    .end local v6    # "isOnDemandPdnHandoff":Z
    .local v25, "isOnDemandPdnHandoff":Z
    if-ne v0, v6, :cond_8

    const/4 v6, 0x1

    goto :goto_8

    :cond_8
    move/from16 v6, v16

    .line 874
    .local v6, "isThrottlingEnabled":Z
    :goto_8
    sget-object v26, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_PCSCFV4_VENDOR_ATTR:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 875
    invoke-virtual/range {v26 .. v26}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 874
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v175

    .line 876
    .local v175, "strPcscfv4":Ljava/lang/String;
    move-object/from16 v176, v5

    .end local v5    # "alwaysOnApn":Ljava/lang/String;
    .local v176, "alwaysOnApn":Ljava/lang/String;
    invoke-static/range {v175 .. v175}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 878
    .local v5, "pcscfv4attr":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_PCSCFV6_VENDOR_ATTR:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 879
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 878
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v177

    .line 880
    .local v177, "strPcscfv6":Ljava/lang/String;
    move/from16 v178, v5

    .end local v5    # "pcscfv4attr":I
    .local v178, "pcscfv4attr":I
    invoke-static/range {v177 .. v177}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 884
    .local v5, "pcscfv6attr":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_IMEI_VENDOR_ATTR:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 885
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 884
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v179

    .line 886
    .local v179, "imeiVendorAttrTypeStr":Ljava/lang/String;
    if-nez v179, :cond_9

    .line 887
    const/4 v0, 0x0

    move/from16 v180, v0

    .local v0, "imeiVendorAttrType":I
    goto :goto_9

    .line 889
    .end local v0    # "imeiVendorAttrType":I
    :cond_9
    invoke-static/range {v179 .. v179}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v180, v0

    .line 892
    .local v180, "imeiVendorAttrType":I
    :goto_9
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_TEST_NETWORK_INTERFACE_NUMBER:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 893
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 892
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v181

    .line 894
    .local v181, "strInterfaceNum":Ljava/lang/String;
    move/from16 v182, v5

    .end local v5    # "pcscfv6attr":I
    .local v182, "pcscfv6attr":I
    invoke-static/range {v181 .. v181}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 896
    .local v5, "interfaceNum":I
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_EPDG_ENABLE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 897
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 896
    move/from16 v183, v5

    .end local v5    # "interfaceNum":I
    .local v183, "interfaceNum":I
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 898
    .local v5, "strIsEpdgEnable":Ljava/lang/String;
    const-string v0, "on"

    move/from16 v184, v3

    .end local v3    # "lteRsrqRoveinWeak":I
    .local v184, "lteRsrqRoveinWeak":I
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 900
    .local v3, "isEpdgEnable":Z
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_EMERGENCY_APNTYPE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 901
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 900
    move-object/from16 v185, v5

    .end local v5    # "strIsEpdgEnable":Ljava/lang/String;
    .local v185, "strIsEpdgEnable":Ljava/lang/String;
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 903
    .local v5, "emergencyApnType":Ljava/lang/String;
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_DPD_ALLOWED_IN_CONNECTED_MODE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 904
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 903
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v186

    .line 905
    .local v186, "strIsConnectedDpdAllow":Ljava/lang/String;
    invoke-static/range {v186 .. v186}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v26, v6

    const/4 v6, 0x1

    .end local v6    # "isThrottlingEnabled":Z
    .local v26, "isThrottlingEnabled":Z
    if-ne v0, v6, :cond_a

    const/4 v6, 0x1

    goto :goto_a

    :cond_a
    move/from16 v6, v16

    .line 907
    .local v6, "isConnectedModeDpdAllow":Z
    :goto_a
    sget-object v27, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_IS_IPV6_ENABLED:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 908
    invoke-virtual/range {v27 .. v27}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 907
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v187

    .line 909
    .local v187, "strIsIpv6Enabled":Ljava/lang/String;
    invoke-static/range {v187 .. v187}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v27, v6

    const/4 v6, 0x1

    .end local v6    # "isConnectedModeDpdAllow":Z
    .local v27, "isConnectedModeDpdAllow":Z
    if-ne v0, v6, :cond_b

    const/4 v6, 0x1

    goto :goto_b

    :cond_b
    move/from16 v6, v16

    .line 911
    .local v6, "isIpv6Enabled":Z
    :goto_b
    sget-object v28, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_IS_IPV6_PREFERRED:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 912
    invoke-virtual/range {v28 .. v28}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 911
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v188

    .line 913
    .local v188, "strIsIpv6Preferred":Ljava/lang/String;
    invoke-static/range {v188 .. v188}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v28, v6

    const/4 v6, 0x1

    .end local v6    # "isIpv6Enabled":Z
    .local v28, "isIpv6Enabled":Z
    if-ne v0, v6, :cond_c

    const/4 v6, 0x1

    goto :goto_c

    :cond_c
    move/from16 v6, v16

    .line 915
    .local v6, "isIpv6Preferred":Z
    :goto_c
    sget-object v29, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_CERTI_PATH:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 916
    invoke-virtual/range {v29 .. v29}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 915
    move-object/from16 v189, v5

    .end local v5    # "emergencyApnType":Ljava/lang/String;
    .local v189, "emergencyApnType":Ljava/lang/String;
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 918
    .local v5, "certiPath":Ljava/lang/String;
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_IS_USING_CERTI:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 919
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 918
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v190

    .line 920
    .local v190, "strIsUsingCerti":Ljava/lang/String;
    invoke-static/range {v190 .. v190}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v29, v6

    const/4 v6, 0x1

    .end local v6    # "isIpv6Preferred":Z
    .local v29, "isIpv6Preferred":Z
    if-ne v0, v6, :cond_d

    const/4 v6, 0x1

    goto :goto_d

    :cond_d
    move/from16 v6, v16

    .line 922
    .local v6, "isUsingCerti":Z
    :goto_d
    sget-object v30, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_HANDOVER_SUPPORT:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 923
    invoke-virtual/range {v30 .. v30}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 922
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v191

    .line 924
    .local v191, "strIsHandoverSupport":Ljava/lang/String;
    invoke-static/range {v191 .. v191}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v30, v6

    const/4 v6, 0x1

    .end local v6    # "isUsingCerti":Z
    .local v30, "isUsingCerti":Z
    if-ne v0, v6, :cond_e

    const/4 v6, 0x1

    goto :goto_e

    :cond_e
    move/from16 v6, v16

    .line 926
    .local v6, "isHandoverSupport":Z
    :goto_e
    sget-object v31, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_AIRPLANE_MODE_SUPPORT:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 927
    invoke-virtual/range {v31 .. v31}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 926
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v192

    .line 928
    .local v192, "strIsAirplaneModeSupport":Ljava/lang/String;
    invoke-static/range {v192 .. v192}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v31, v6

    const/4 v6, 0x1

    .end local v6    # "isHandoverSupport":Z
    .local v31, "isHandoverSupport":Z
    if-ne v0, v6, :cond_f

    const/4 v6, 0x1

    goto :goto_f

    :cond_f
    move/from16 v6, v16

    .line 930
    .local v6, "isAirplaneModeSupport":Z
    :goto_f
    sget-object v32, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_ROAMING_SUPPORT:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 931
    invoke-virtual/range {v32 .. v32}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 930
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v193

    .line 932
    .local v193, "strIsRoamingSupport":Ljava/lang/String;
    invoke-static/range {v193 .. v193}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v32, v6

    const/4 v6, 0x1

    .end local v6    # "isAirplaneModeSupport":Z
    .local v32, "isAirplaneModeSupport":Z
    if-ne v0, v6, :cond_10

    const/4 v6, 0x1

    goto :goto_10

    :cond_10
    move/from16 v6, v16

    .line 934
    .local v6, "isRoamingSupport":Z
    :goto_10
    sget-object v33, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_WFC_CALL_MENU:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 935
    invoke-virtual/range {v33 .. v33}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 934
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v194

    .line 936
    .local v194, "strIsWfcCallMenu":Ljava/lang/String;
    invoke-static/range {v194 .. v194}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v33, v6

    const/4 v6, 0x1

    .end local v6    # "isRoamingSupport":Z
    .local v33, "isRoamingSupport":Z
    if-ne v0, v6, :cond_11

    const/4 v6, 0x1

    goto :goto_11

    :cond_11
    move/from16 v6, v16

    .line 937
    .local v6, "isWfcCallMenu":Z
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move/from16 v35, v7

    .end local v7    # "lteRsrp3":I
    .local v35, "lteRsrp3":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v36, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_WFC_CALL_MENU:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    move/from16 v37, v8

    .end local v8    # "lteRsrp2":I
    .local v37, "lteRsrp2":I
    invoke-virtual/range {v36 .. v36}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_12

    const/4 v8, 0x1

    goto :goto_12

    :cond_12
    move/from16 v8, v16

    :goto_12
    invoke-static {v0, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 939
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_WFC_SETTING_MENU:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 940
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 939
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v195

    .line 941
    .local v195, "strIsWfcSettingMenu":Ljava/lang/String;
    invoke-static/range {v195 .. v195}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_13

    const/4 v7, 0x1

    goto :goto_13

    :cond_13
    move/from16 v7, v16

    :goto_13
    move v8, v7

    .line 942
    .local v8, "isWfcSettingMenu":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v36, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_WFC_SETTING_MENU:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    move/from16 v38, v6

    .end local v6    # "isWfcCallMenu":Z
    .local v38, "isWfcCallMenu":Z
    invoke-virtual/range {v36 .. v36}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v8, :cond_14

    const/4 v6, 0x1

    goto :goto_14

    :cond_14
    move/from16 v6, v16

    :goto_14
    invoke-static {v7, v0, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 944
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_WFC_QUICKSETTING_MENU:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    .line 945
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 944
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v196

    .line 946
    .local v196, "strIsWfcQuicksettingMenu":Ljava/lang/String;
    invoke-static/range {v196 .. v196}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_15

    move v0, v6

    goto :goto_15

    :cond_15
    move/from16 v0, v16

    :goto_15
    move v7, v0

    .line 947
    .local v7, "isWfcQuicksettingMenu":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v36, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_WFC_QUICKSETTING_MENU:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    invoke-virtual/range {v36 .. v36}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v7, :cond_16

    const/4 v6, 0x1

    goto :goto_16

    :cond_16
    move/from16 v6, v16

    :goto_16
    invoke-static {v0, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 949
    iget-object v2, v1, Lcom/sec/epdg/EpdgContentReader;->mEpdgSettings:Lcom/sec/epdg/EpdgSettings;

    if-eqz v2, :cond_17

    .line 950
    monitor-enter v2

    .line 951
    move/from16 v198, v17

    move/from16 v197, v18

    move/from16 v199, v19

    move/from16 v200, v20

    move/from16 v201, v21

    move/from16 v202, v22

    move/from16 v203, v23

    move/from16 v204, v24

    move/from16 v205, v25

    move/from16 v206, v26

    move/from16 v207, v27

    move/from16 v208, v28

    move/from16 v209, v29

    move/from16 v210, v30

    move/from16 v211, v31

    move/from16 v212, v32

    move/from16 v213, v33

    move/from16 v214, v38

    .end local v17    # "isRetryEnabledForAlwaysOnApn":Z
    .end local v18    # "lteRsrqRoveout":I
    .end local v19    # "isDynamicFqdn":Z
    .end local v20    # "isDynamicUserFqdn":Z
    .end local v21    # "isAnsIntegrationEnabled":Z
    .end local v22    # "isRtcpIntegrationEnabled":Z
    .end local v23    # "isBroadcastHONotiEnabled":Z
    .end local v24    # "isVowifiOn":Z
    .end local v25    # "isOnDemandPdnHandoff":Z
    .end local v26    # "isThrottlingEnabled":Z
    .end local v27    # "isConnectedModeDpdAllow":Z
    .end local v28    # "isIpv6Enabled":Z
    .end local v29    # "isIpv6Preferred":Z
    .end local v30    # "isUsingCerti":Z
    .end local v31    # "isHandoverSupport":Z
    .end local v32    # "isAirplaneModeSupport":Z
    .end local v33    # "isRoamingSupport":Z
    .end local v38    # "isWfcCallMenu":Z
    .local v197, "lteRsrqRoveout":I
    .local v198, "isRetryEnabledForAlwaysOnApn":Z
    .local v199, "isDynamicFqdn":Z
    .local v200, "isDynamicUserFqdn":Z
    .local v201, "isAnsIntegrationEnabled":Z
    .local v202, "isRtcpIntegrationEnabled":Z
    .local v203, "isBroadcastHONotiEnabled":Z
    .local v204, "isVowifiOn":Z
    .local v205, "isOnDemandPdnHandoff":Z
    .local v206, "isThrottlingEnabled":Z
    .local v207, "isConnectedModeDpdAllow":Z
    .local v208, "isIpv6Enabled":Z
    .local v209, "isIpv6Preferred":Z
    .local v210, "isUsingCerti":Z
    .local v211, "isHandoverSupport":Z
    .local v212, "isAirplaneModeSupport":Z
    .local v213, "isRoamingSupport":Z
    .local v214, "isWfcCallMenu":Z
    move v6, v15

    move/from16 v216, v7

    move/from16 v215, v35

    .end local v7    # "isWfcQuicksettingMenu":Z
    .end local v35    # "lteRsrp3":I
    .local v215, "lteRsrp3":I
    .local v216, "isWfcQuicksettingMenu":Z
    move v7, v14

    move/from16 v218, v8

    move/from16 v217, v37

    .end local v8    # "isWfcSettingMenu":Z
    .end local v37    # "lteRsrp2":I
    .local v217, "lteRsrp2":I
    .local v218, "isWfcSettingMenu":Z
    move v8, v13

    move/from16 v219, v9

    .end local v9    # "lteRsrp1":I
    .local v219, "lteRsrp1":I
    move v9, v12

    move/from16 v220, v10

    .end local v10    # "wifiRssiRoveInVoice":I
    .local v220, "wifiRssiRoveInVoice":I
    move v10, v11

    move/from16 v221, v11

    .end local v11    # "wifiRssiRoveOutWifiOnly":I
    .local v221, "wifiRssiRoveOutWifiOnly":I
    move/from16 v11, v220

    move/from16 v222, v12

    .end local v12    # "wifiRssiRoveInWifiOnly":I
    .local v222, "wifiRssiRoveInWifiOnly":I
    move/from16 v12, v219

    move/from16 v223, v13

    .end local v13    # "wifiRssiC":I
    .local v223, "wifiRssiC":I
    move/from16 v13, v217

    move/from16 v224, v14

    .end local v14    # "wifiRssiB":I
    .local v224, "wifiRssiB":I
    move/from16 v14, v215

    move/from16 v225, v15

    .end local v15    # "wifiRssiA":I
    .local v225, "wifiRssiA":I
    move/from16 v15, v197

    move/from16 v16, v184

    move/from16 v17, v95

    move/from16 v18, v96

    move-object/from16 v19, v98

    move/from16 v20, v100

    move/from16 v21, v102

    move/from16 v22, v104

    move/from16 v23, v106

    move/from16 v24, v108

    move/from16 v25, v110

    move/from16 v26, v112

    move/from16 v27, v114

    move/from16 v28, v116

    move/from16 v29, v118

    move/from16 v30, v120

    move/from16 v31, v122

    move/from16 v32, v124

    move/from16 v33, v126

    move/from16 v34, v128

    move/from16 v35, v130

    move/from16 v36, v132

    move/from16 v37, v134

    move/from16 v38, v136

    move/from16 v39, v138

    move/from16 v40, v140

    move/from16 v41, v142

    move/from16 v42, v144

    move/from16 v43, v146

    move/from16 v44, v148

    move/from16 v45, v150

    move/from16 v46, v152

    move/from16 v47, v154

    move/from16 v48, v161

    move/from16 v49, v156

    move/from16 v50, v158

    move/from16 v51, v198

    move/from16 v52, v163

    move/from16 v53, v170

    move-object/from16 v54, v164

    move/from16 v55, v199

    move/from16 v56, v200

    move/from16 v57, v201

    move/from16 v58, v202

    move/from16 v59, v203

    move-object/from16 v60, v171

    move-object/from16 v61, v176

    move/from16 v62, v204

    move/from16 v63, v205

    move/from16 v64, v206

    move/from16 v65, v178

    move/from16 v66, v182

    move/from16 v67, v180

    move/from16 v68, v183

    move/from16 v69, v3

    move-object/from16 v70, v189

    move/from16 v71, v207

    move/from16 v72, v208

    move/from16 v73, v209

    move-object/from16 v74, v5

    move/from16 v75, v210

    move/from16 v76, v211

    move/from16 v77, v212

    move/from16 v78, v213

    move/from16 v79, v214

    move/from16 v80, v218

    move/from16 v81, v216

    :try_start_0
    invoke-static/range {v6 .. v81}, Lcom/sec/epdg/EpdgSettings;->getInstance(IIIIIIIIIIIIILjava/lang/String;IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIZIILjava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;ZZZIIIIZLjava/lang/String;ZZZLjava/lang/String;ZZZZZZZ)Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/epdg/EpdgContentReader;->mEpdgSettings:Lcom/sec/epdg/EpdgSettings;

    .line 966
    monitor-exit v2

    goto/16 :goto_17

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 968
    .end local v197    # "lteRsrqRoveout":I
    .end local v198    # "isRetryEnabledForAlwaysOnApn":Z
    .end local v199    # "isDynamicFqdn":Z
    .end local v200    # "isDynamicUserFqdn":Z
    .end local v201    # "isAnsIntegrationEnabled":Z
    .end local v202    # "isRtcpIntegrationEnabled":Z
    .end local v203    # "isBroadcastHONotiEnabled":Z
    .end local v204    # "isVowifiOn":Z
    .end local v205    # "isOnDemandPdnHandoff":Z
    .end local v206    # "isThrottlingEnabled":Z
    .end local v207    # "isConnectedModeDpdAllow":Z
    .end local v208    # "isIpv6Enabled":Z
    .end local v209    # "isIpv6Preferred":Z
    .end local v210    # "isUsingCerti":Z
    .end local v211    # "isHandoverSupport":Z
    .end local v212    # "isAirplaneModeSupport":Z
    .end local v213    # "isRoamingSupport":Z
    .end local v214    # "isWfcCallMenu":Z
    .end local v215    # "lteRsrp3":I
    .end local v216    # "isWfcQuicksettingMenu":Z
    .end local v217    # "lteRsrp2":I
    .end local v218    # "isWfcSettingMenu":Z
    .end local v219    # "lteRsrp1":I
    .end local v220    # "wifiRssiRoveInVoice":I
    .end local v221    # "wifiRssiRoveOutWifiOnly":I
    .end local v222    # "wifiRssiRoveInWifiOnly":I
    .end local v223    # "wifiRssiC":I
    .end local v224    # "wifiRssiB":I
    .end local v225    # "wifiRssiA":I
    .restart local v7    # "isWfcQuicksettingMenu":Z
    .restart local v8    # "isWfcSettingMenu":Z
    .restart local v9    # "lteRsrp1":I
    .restart local v10    # "wifiRssiRoveInVoice":I
    .restart local v11    # "wifiRssiRoveOutWifiOnly":I
    .restart local v12    # "wifiRssiRoveInWifiOnly":I
    .restart local v13    # "wifiRssiC":I
    .restart local v14    # "wifiRssiB":I
    .restart local v15    # "wifiRssiA":I
    .restart local v17    # "isRetryEnabledForAlwaysOnApn":Z
    .restart local v18    # "lteRsrqRoveout":I
    .restart local v19    # "isDynamicFqdn":Z
    .restart local v20    # "isDynamicUserFqdn":Z
    .restart local v21    # "isAnsIntegrationEnabled":Z
    .restart local v22    # "isRtcpIntegrationEnabled":Z
    .restart local v23    # "isBroadcastHONotiEnabled":Z
    .restart local v24    # "isVowifiOn":Z
    .restart local v25    # "isOnDemandPdnHandoff":Z
    .restart local v26    # "isThrottlingEnabled":Z
    .restart local v27    # "isConnectedModeDpdAllow":Z
    .restart local v28    # "isIpv6Enabled":Z
    .restart local v29    # "isIpv6Preferred":Z
    .restart local v30    # "isUsingCerti":Z
    .restart local v31    # "isHandoverSupport":Z
    .restart local v32    # "isAirplaneModeSupport":Z
    .restart local v33    # "isRoamingSupport":Z
    .restart local v35    # "lteRsrp3":I
    .restart local v37    # "lteRsrp2":I
    .restart local v38    # "isWfcCallMenu":Z
    :cond_17
    move/from16 v216, v7

    move/from16 v218, v8

    move/from16 v219, v9

    move/from16 v220, v10

    move/from16 v221, v11

    move/from16 v222, v12

    move/from16 v223, v13

    move/from16 v224, v14

    move/from16 v225, v15

    move/from16 v198, v17

    move/from16 v197, v18

    move/from16 v199, v19

    move/from16 v200, v20

    move/from16 v201, v21

    move/from16 v202, v22

    move/from16 v203, v23

    move/from16 v204, v24

    move/from16 v205, v25

    move/from16 v206, v26

    move/from16 v207, v27

    move/from16 v208, v28

    move/from16 v209, v29

    move/from16 v210, v30

    move/from16 v211, v31

    move/from16 v212, v32

    move/from16 v213, v33

    move/from16 v215, v35

    move/from16 v217, v37

    move/from16 v214, v38

    .end local v7    # "isWfcQuicksettingMenu":Z
    .end local v8    # "isWfcSettingMenu":Z
    .end local v9    # "lteRsrp1":I
    .end local v10    # "wifiRssiRoveInVoice":I
    .end local v11    # "wifiRssiRoveOutWifiOnly":I
    .end local v12    # "wifiRssiRoveInWifiOnly":I
    .end local v13    # "wifiRssiC":I
    .end local v14    # "wifiRssiB":I
    .end local v15    # "wifiRssiA":I
    .end local v17    # "isRetryEnabledForAlwaysOnApn":Z
    .end local v18    # "lteRsrqRoveout":I
    .end local v19    # "isDynamicFqdn":Z
    .end local v20    # "isDynamicUserFqdn":Z
    .end local v21    # "isAnsIntegrationEnabled":Z
    .end local v22    # "isRtcpIntegrationEnabled":Z
    .end local v23    # "isBroadcastHONotiEnabled":Z
    .end local v24    # "isVowifiOn":Z
    .end local v25    # "isOnDemandPdnHandoff":Z
    .end local v26    # "isThrottlingEnabled":Z
    .end local v27    # "isConnectedModeDpdAllow":Z
    .end local v28    # "isIpv6Enabled":Z
    .end local v29    # "isIpv6Preferred":Z
    .end local v30    # "isUsingCerti":Z
    .end local v31    # "isHandoverSupport":Z
    .end local v32    # "isAirplaneModeSupport":Z
    .end local v33    # "isRoamingSupport":Z
    .end local v35    # "lteRsrp3":I
    .end local v37    # "lteRsrp2":I
    .end local v38    # "isWfcCallMenu":Z
    .restart local v197    # "lteRsrqRoveout":I
    .restart local v198    # "isRetryEnabledForAlwaysOnApn":Z
    .restart local v199    # "isDynamicFqdn":Z
    .restart local v200    # "isDynamicUserFqdn":Z
    .restart local v201    # "isAnsIntegrationEnabled":Z
    .restart local v202    # "isRtcpIntegrationEnabled":Z
    .restart local v203    # "isBroadcastHONotiEnabled":Z
    .restart local v204    # "isVowifiOn":Z
    .restart local v205    # "isOnDemandPdnHandoff":Z
    .restart local v206    # "isThrottlingEnabled":Z
    .restart local v207    # "isConnectedModeDpdAllow":Z
    .restart local v208    # "isIpv6Enabled":Z
    .restart local v209    # "isIpv6Preferred":Z
    .restart local v210    # "isUsingCerti":Z
    .restart local v211    # "isHandoverSupport":Z
    .restart local v212    # "isAirplaneModeSupport":Z
    .restart local v213    # "isRoamingSupport":Z
    .restart local v214    # "isWfcCallMenu":Z
    .restart local v215    # "lteRsrp3":I
    .restart local v216    # "isWfcQuicksettingMenu":Z
    .restart local v217    # "lteRsrp2":I
    .restart local v218    # "isWfcSettingMenu":Z
    .restart local v219    # "lteRsrp1":I
    .restart local v220    # "wifiRssiRoveInVoice":I
    .restart local v221    # "wifiRssiRoveOutWifiOnly":I
    .restart local v222    # "wifiRssiRoveInWifiOnly":I
    .restart local v223    # "wifiRssiC":I
    .restart local v224    # "wifiRssiB":I
    .restart local v225    # "wifiRssiA":I
    move/from16 v6, v225

    move/from16 v7, v224

    move/from16 v8, v223

    move/from16 v9, v222

    move/from16 v10, v221

    move/from16 v11, v220

    move/from16 v12, v219

    move/from16 v13, v217

    move/from16 v14, v215

    move/from16 v15, v197

    move/from16 v16, v184

    move/from16 v17, v95

    move/from16 v18, v96

    move-object/from16 v19, v98

    move/from16 v20, v100

    move/from16 v21, v102

    move/from16 v22, v104

    move/from16 v23, v106

    move/from16 v24, v108

    move/from16 v25, v110

    move/from16 v26, v112

    move/from16 v27, v114

    move/from16 v28, v116

    move/from16 v29, v118

    move/from16 v30, v120

    move/from16 v31, v122

    move/from16 v32, v124

    move/from16 v33, v126

    move/from16 v34, v128

    move/from16 v35, v130

    move/from16 v36, v132

    move/from16 v37, v134

    move/from16 v38, v136

    move/from16 v39, v138

    move/from16 v40, v140

    move/from16 v41, v142

    move/from16 v42, v144

    move/from16 v43, v146

    move/from16 v44, v148

    move/from16 v45, v150

    move/from16 v46, v152

    move/from16 v47, v154

    move/from16 v48, v161

    move/from16 v49, v156

    move/from16 v50, v158

    move/from16 v51, v198

    move/from16 v52, v163

    move/from16 v53, v170

    move-object/from16 v54, v164

    move/from16 v55, v199

    move/from16 v56, v200

    move/from16 v57, v201

    move/from16 v58, v202

    move/from16 v59, v203

    move-object/from16 v60, v171

    move-object/from16 v61, v176

    move/from16 v62, v204

    move/from16 v63, v205

    move/from16 v64, v206

    move/from16 v65, v178

    move/from16 v66, v182

    move/from16 v67, v180

    move/from16 v68, v183

    move/from16 v69, v3

    move-object/from16 v70, v189

    move/from16 v71, v207

    move/from16 v72, v208

    move/from16 v73, v209

    move-object/from16 v74, v5

    move/from16 v75, v210

    move/from16 v76, v211

    move/from16 v77, v212

    move/from16 v78, v213

    move/from16 v79, v214

    move/from16 v80, v218

    move/from16 v81, v216

    invoke-static/range {v6 .. v81}, Lcom/sec/epdg/EpdgSettings;->getInstance(IIIIIIIIIIIIILjava/lang/String;IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIZIILjava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;ZZZIIIIZLjava/lang/String;ZZZLjava/lang/String;ZZZZZZZ)Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/epdg/EpdgContentReader;->mEpdgSettings:Lcom/sec/epdg/EpdgSettings;

    .line 985
    :goto_17
    iget-object v0, v1, Lcom/sec/epdg/EpdgContentReader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "epdgsettings read successfully :  Wifi Level : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, v225

    .end local v225    # "wifiRssiA":I
    .local v6, "wifiRssiA":I
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " Wifi RSSI B : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, v224

    .end local v224    # "wifiRssiB":I
    .local v7, "wifiRssiB":I
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " Wifi RSSI C : "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, v223

    .end local v223    # "wifiRssiC":I
    .local v8, "wifiRssiC":I
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " Wifi RSSI Rove In (WifiOnly) : "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, v222

    .end local v222    # "wifiRssiRoveInWifiOnly":I
    .local v9, "wifiRssiRoveInWifiOnly":I
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " Wifi RSSI Rove Out (WifiOnly) : "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v221

    .end local v221    # "wifiRssiRoveOutWifiOnly":I
    .local v10, "wifiRssiRoveOutWifiOnly":I
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " Wifi RSSI Rove In (Voice) : "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, v220

    .end local v220    # "wifiRssiRoveInVoice":I
    .local v11, "wifiRssiRoveInVoice":I
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " Lte RSRP 1 : "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, v219

    .end local v219    # "lteRsrp1":I
    .local v12, "lteRsrp1":I
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " Lte RSRP 2 : "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, v217

    .end local v217    # "lteRsrp2":I
    .local v13, "lteRsrp2":I
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " Lte RSRP 3 : "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, v215

    .end local v215    # "lteRsrp3":I
    .local v14, "lteRsrp3":I
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " Lte RSRQ 4 : "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, v197

    .end local v197    # "lteRsrqRoveout":I
    .local v15, "lteRsrqRoveout":I
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Lte RSRP 5 : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v184

    .end local v184    # "lteRsrqRoveinWeak":I
    .local v1, "lteRsrqRoveinWeak":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v1    # "lteRsrqRoveinWeak":I
    .restart local v184    # "lteRsrqRoveinWeak":I
    const-string v1, " Lte RSRQ 6: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v95

    .end local v95    # "lteRsrqRovein":I
    .local v1, "lteRsrqRovein":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v1    # "lteRsrqRovein":I
    .restart local v95    # "lteRsrqRovein":I
    const-string v1, " Cdma Rssi : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v96

    .end local v96    # "cdmaRssi":I
    .local v1, "cdmaRssi":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v1    # "cdmaRssi":I
    .restart local v96    # "cdmaRssi":I
    const-string v1, "ping address :"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v98

    .end local v98    # "strPingAddress":Ljava/lang/String;
    .local v1, "strPingAddress":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v1    # "strPingAddress":Ljava/lang/String;
    .restart local v98    # "strPingAddress":Ljava/lang/String;
    const-string v1, "\n Pkt Loss Percent L2W : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v100

    .end local v100    # "pktLossPercentL2w":I
    .local v1, "pktLossPercentL2w":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v1    # "pktLossPercentL2w":I
    .restart local v100    # "pktLossPercentL2w":I
    const-string v1, " Pkt Loss Percent W2L : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v102

    .end local v102    # "pktLossPercentW2l":I
    .local v1, "pktLossPercentW2l":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v1    # "pktLossPercentW2l":I
    .restart local v102    # "pktLossPercentW2l":I
    const-string v1, " ping RTT Th W2L : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v104

    .end local v104    # "thresholdpingrttW2l":I
    .local v1, "thresholdpingrttW2l":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v1    # "thresholdpingrttW2l":I
    .restart local v104    # "thresholdpingrttW2l":I
    const-string v1, " Ping count : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v106

    .end local v106    # "pingpacketcount":I
    .local v1, "pingpacketcount":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v1    # "pingpacketcount":I
    .restart local v106    # "pingpacketcount":I
    const-string v1, "ping timeout : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v108

    .end local v108    # "pingpackettimeout":I
    .local v1, "pingpackettimeout":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v1    # "pingpackettimeout":I
    .restart local v108    # "pingpackettimeout":I
    const-string v1, " RTP/RTCP loss rate percent : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v110

    .end local v110    # "rtprtcplossratepercent":I
    .local v1, "rtprtcplossratepercent":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v1    # "rtprtcplossratepercent":I
    .restart local v110    # "rtprtcplossratepercent":I
    const-string v1, " loss rate max cnt : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v112

    .end local v112    # "rtprtcplossmaxcnt":I
    .local v1, "rtprtcplossmaxcnt":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v1    # "rtprtcplossmaxcnt":I
    .restart local v112    # "rtprtcplossmaxcnt":I
    const-string v1, " Threshold DPD latency : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v114

    .end local v114    # "thresholddpdlatency":I
    .local v1, "thresholddpdlatency":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v1    # "thresholddpdlatency":I
    .restart local v114    # "thresholddpdlatency":I
    const-string v1, "\n 4G Rove In Out :"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v116

    .end local v116    # "threshold4gRoveIn":I
    .local v1, "threshold4gRoveIn":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v1    # "threshold4gRoveIn":I
    .restart local v116    # "threshold4gRoveIn":I
    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v118

    .end local v118    # "threshold4gRoveOut":I
    .local v1, "threshold4gRoveOut":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v1    # "threshold4gRoveOut":I
    .restart local v118    # "threshold4gRoveOut":I
    const-string v1, " 3G Rove In Out :"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v120

    .end local v120    # "threshold3gRoveIn":I
    .local v1, "threshold3gRoveIn":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v1    # "threshold3gRoveIn":I
    .restart local v120    # "threshold3gRoveIn":I
    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v122

    .end local v122    # "threshold3gRoveOut":I
    .local v1, "threshold3gRoveOut":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v1    # "threshold3gRoveOut":I
    .restart local v122    # "threshold3gRoveOut":I
    const-string v1, " 2G Rove In Out :"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v124

    .end local v124    # "threshold2gRoveIn":I
    .local v1, "threshold2gRoveIn":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v1    # "threshold2gRoveIn":I
    .restart local v124    # "threshold2gRoveIn":I
    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v126

    .end local v126    # "threshold2gRoveOut":I
    .local v1, "threshold2gRoveOut":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v1    # "threshold2gRoveOut":I
    .restart local v126    # "threshold2gRoveOut":I
    const-string v1, " SNR Rove In :"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v128

    .end local v128    # "thresholdSnrIn":I
    .local v1, "thresholdSnrIn":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v1    # "thresholdSnrIn":I
    .restart local v128    # "thresholdSnrIn":I
    const-string v1, " SNR Rove Out :"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v130

    .end local v130    # "thresholdSnrOut":I
    .local v1, "thresholdSnrOut":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v1    # "thresholdSnrOut":I
    .restart local v130    # "thresholdSnrOut":I
    const-string v1, " Ecio Rove In :"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v132

    .end local v132    # "thresholdEcioIn":I
    .local v1, "thresholdEcioIn":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v1    # "thresholdEcioIn":I
    .restart local v132    # "thresholdEcioIn":I
    const-string v1, " Ecio Rove Out :"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v134

    .end local v134    # "thresholdEcioOut":I
    .local v1, "thresholdEcioOut":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v1    # "thresholdEcioOut":I
    .restart local v134    # "thresholdEcioOut":I
    const-string v1, " Sys Sel Timer : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v136

    .end local v136    # "sysSelTimer":I
    .local v1, "sysSelTimer":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v1    # "sysSelTimer":I
    .restart local v136    # "sysSelTimer":I
    const-string v1, " TepdgLte timer : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v138

    .end local v138    # "tepdgLteTimer":I
    .local v1, "tepdgLteTimer":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v1    # "tepdgLteTimer":I
    .restart local v138    # "tepdgLteTimer":I
    const-string v1, " Tepdg1x timer : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v140

    .end local v140    # "tepdg1xTimer":I
    .local v1, "tepdg1xTimer":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v1    # "tepdg1xTimer":I
    .restart local v140    # "tepdg1xTimer":I
    const-string v1, " Tepdg1xScan timer : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v142

    .end local v142    # "tepdg1xScanTimer":I
    .local v1, "tepdg1xScanTimer":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v1    # "tepdg1xScanTimer":I
    .restart local v142    # "tepdg1xScanTimer":I
    const-string v1, " HO Delay Timer : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v144

    .end local v144    # "hoDelayTimer":I
    .local v1, "hoDelayTimer":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v1    # "hoDelayTimer":I
    .restart local v144    # "hoDelayTimer":I
    const-string v1, " Wifi IP Config Timer : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v146

    .end local v146    # "wifiIpConfigTimer":I
    .local v1, "wifiIpConfigTimer":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v1    # "wifiIpConfigTimer":I
    .restart local v146    # "wifiIpConfigTimer":I
    const-string v1, "\n Quality Check Frequency Timer "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v148

    .end local v148    # "qualityCheckTimer":I
    .local v1, "qualityCheckTimer":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v1    # "qualityCheckTimer":I
    .restart local v148    # "qualityCheckTimer":I
    const-string v1, " TepdgLteMeasurement Timer : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v150

    .end local v150    # "tepdgLteMeasurementTimer":I
    .local v1, "tepdgLteMeasurementTimer":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v1    # "tepdgLteMeasurementTimer":I
    .restart local v150    # "tepdgLteMeasurementTimer":I
    const-string v1, " TepdgLteMeasurement Count : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v152

    .end local v152    # "tepdgLteMeasurementCount":I
    .local v1, "tepdgLteMeasurementCount":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v1    # "tepdgLteMeasurementCount":I
    .restart local v152    # "tepdgLteMeasurementCount":I
    const-string v1, " TepdgWifiMeasurement Timer : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v154

    .end local v154    # "tepdgWifiMeasurementTimer":I
    .local v1, "tepdgWifiMeasurementTimer":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v1    # "tepdgWifiMeasurementTimer":I
    .restart local v154    # "tepdgWifiMeasurementTimer":I
    const-string v1, " TepdgWifiMeasurement Count : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v161

    .end local v161    # "tepdgWifiMeasurementCount":I
    .local v1, "tepdgWifiMeasurementCount":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v1    # "tepdgWifiMeasurementCount":I
    .restart local v161    # "tepdgWifiMeasurementCount":I
    const-string v1, " IDi MAC : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    invoke-static {}, Lcom/sec/epdg/Logger/Log;->isUserBinary()Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "suppressed in user binary"

    goto :goto_18

    :cond_18
    invoke-static/range {v156 .. v156}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_18
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " IDi IMSI : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    invoke-static {}, Lcom/sec/epdg/Logger/Log;->isUserBinary()Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "suppressed in user binary"

    goto :goto_19

    :cond_19
    invoke-static/range {v158 .. v158}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Data retry enabled: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v198

    .end local v198    # "isRetryEnabledForAlwaysOnApn":Z
    .local v1, "isRetryEnabledForAlwaysOnApn":Z
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .end local v1    # "isRetryEnabledForAlwaysOnApn":Z
    .restart local v198    # "isRetryEnabledForAlwaysOnApn":Z
    const-string v1, " SmartWifi Timer : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v163

    .end local v163    # "smartWifiTimer":I
    .local v1, "smartWifiTimer":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v1    # "smartWifiTimer":I
    .restart local v163    # "smartWifiTimer":I
    const-string v1, " Internet Keep-Alive Timer "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v170

    .end local v170    # "keepAliveTimer":I
    .local v1, "keepAliveTimer":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v1    # "keepAliveTimer":I
    .restart local v170    # "keepAliveTimer":I
    const-string v1, "\n EPDG Server IP "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    invoke-static {}, Lcom/sec/epdg/Logger/Log;->isUserBinary()Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "Suppressed in user binary"

    goto :goto_1a

    :cond_1a
    move-object/from16 v1, v164

    :goto_1a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dynamic_fqdn "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v199

    .end local v199    # "isDynamicFqdn":Z
    .local v1, "isDynamicFqdn":Z
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .end local v1    # "isDynamicFqdn":Z
    .restart local v199    # "isDynamicFqdn":Z
    const-string v1, " dynamic_userfqdn "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v200

    .end local v200    # "isDynamicUserFqdn":Z
    .local v1, "isDynamicUserFqdn":Z
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .end local v1    # "isDynamicUserFqdn":Z
    .restart local v200    # "isDynamicUserFqdn":Z
    const-string v1, " Smart WiFi ANS Integration "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v201

    .end local v201    # "isAnsIntegrationEnabled":Z
    .local v1, "isAnsIntegrationEnabled":Z
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .end local v1    # "isAnsIntegrationEnabled":Z
    .restart local v201    # "isAnsIntegrationEnabled":Z
    const-string v1, " Smart WiFi RTCP Integration "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v202

    .end local v202    # "isRtcpIntegrationEnabled":Z
    .local v1, "isRtcpIntegrationEnabled":Z
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .end local v1    # "isRtcpIntegrationEnabled":Z
    .restart local v202    # "isRtcpIntegrationEnabled":Z
    const-string v1, " Broadcast HO result "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v203

    .end local v203    # "isBroadcastHONotiEnabled":Z
    .local v1, "isBroadcastHONotiEnabled":Z
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .end local v1    # "isBroadcastHONotiEnabled":Z
    .restart local v203    # "isBroadcastHONotiEnabled":Z
    const-string v1, " Attach PDN "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v171

    .end local v171    # "attachPdn":Ljava/lang/String;
    .local v1, "attachPdn":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v1    # "attachPdn":Ljava/lang/String;
    .restart local v171    # "attachPdn":Ljava/lang/String;
    const-string v1, " alwaysOn Apn "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v176

    .end local v176    # "alwaysOnApn":Ljava/lang/String;
    .local v1, "alwaysOnApn":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v1    # "alwaysOnApn":Ljava/lang/String;
    .restart local v176    # "alwaysOnApn":Ljava/lang/String;
    const-string v1, " Testing On demand PDN Handoff "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v205

    .end local v205    # "isOnDemandPdnHandoff":Z
    .local v1, "isOnDemandPdnHandoff":Z
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .end local v1    # "isOnDemandPdnHandoff":Z
    .restart local v205    # "isOnDemandPdnHandoff":Z
    const-string v1, " Vowifi "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v204

    .end local v204    # "isVowifiOn":Z
    .local v1, "isVowifiOn":Z
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .end local v1    # "isVowifiOn":Z
    .restart local v204    # "isVowifiOn":Z
    const-string v1, " IsThrottlingEnabled: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v206

    .end local v206    # "isThrottlingEnabled":Z
    .local v1, "isThrottlingEnabled":Z
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .end local v1    # "isThrottlingEnabled":Z
    .restart local v206    # "isThrottlingEnabled":Z
    const-string v1, " pcscfv4attr: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v178

    .end local v178    # "pcscfv4attr":I
    .local v1, "pcscfv4attr":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v1    # "pcscfv4attr":I
    .restart local v178    # "pcscfv4attr":I
    const-string v1, " pcscfv6attr: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v182

    .end local v182    # "pcscfv6attr":I
    .local v1, "pcscfv6attr":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v1    # "pcscfv6attr":I
    .restart local v182    # "pcscfv6attr":I
    const-string v1, " imeiVendorAttrType: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v180

    .end local v180    # "imeiVendorAttrType":I
    .local v1, "imeiVendorAttrType":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v16, v1

    .end local v1    # "imeiVendorAttrType":I
    .local v16, "imeiVendorAttrType":I
    const-string v1, " interfaceNum: rmnet"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v183

    .end local v183    # "interfaceNum":I
    .local v1, "interfaceNum":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v1    # "interfaceNum":I
    .restart local v183    # "interfaceNum":I
    const-string v1, "\n isEpdgEnable "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " emergencyApnType"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v189

    .end local v189    # "emergencyApnType":Ljava/lang/String;
    .local v1, "emergencyApnType":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v1    # "emergencyApnType":Ljava/lang/String;
    .restart local v189    # "emergencyApnType":Ljava/lang/String;
    const-string v1, " Dpd allow in connected mode"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v207

    .end local v207    # "isConnectedModeDpdAllow":Z
    .local v1, "isConnectedModeDpdAllow":Z
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .end local v1    # "isConnectedModeDpdAllow":Z
    .restart local v207    # "isConnectedModeDpdAllow":Z
    const-string v1, " IsIpv6Enabled: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v208

    .end local v208    # "isIpv6Enabled":Z
    .local v1, "isIpv6Enabled":Z
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .end local v1    # "isIpv6Enabled":Z
    .restart local v208    # "isIpv6Enabled":Z
    const-string v1, " IsIpv6Preferred: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v209

    .end local v209    # "isIpv6Preferred":Z
    .local v1, "isIpv6Preferred":Z
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .end local v1    # "isIpv6Preferred":Z
    .restart local v209    # "isIpv6Preferred":Z
    const-string v1, " certiPath: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isUsingCerti: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v210

    .end local v210    # "isUsingCerti":Z
    .local v1, "isUsingCerti":Z
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .end local v1    # "isUsingCerti":Z
    .restart local v210    # "isUsingCerti":Z
    const-string v1, " isHandoverSupport: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v211

    .end local v211    # "isHandoverSupport":Z
    .local v1, "isHandoverSupport":Z
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .end local v1    # "isHandoverSupport":Z
    .restart local v211    # "isHandoverSupport":Z
    const-string v1, " isAirplaneModeSupport: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v213

    .end local v213    # "isRoamingSupport":Z
    .local v1, "isRoamingSupport":Z
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .end local v1    # "isRoamingSupport":Z
    .restart local v213    # "isRoamingSupport":Z
    const-string v1, " isRoamingSupport: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v212

    .end local v212    # "isAirplaneModeSupport":Z
    .local v1, "isAirplaneModeSupport":Z
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .end local v1    # "isAirplaneModeSupport":Z
    .restart local v212    # "isAirplaneModeSupport":Z
    const-string v1, " isWfcCallMenu: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v214

    .end local v214    # "isWfcCallMenu":Z
    .local v1, "isWfcCallMenu":Z
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .end local v1    # "isWfcCallMenu":Z
    .restart local v214    # "isWfcCallMenu":Z
    const-string v1, " isWfcSettingMenu: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v218

    .end local v218    # "isWfcSettingMenu":Z
    .local v1, "isWfcSettingMenu":Z
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .end local v1    # "isWfcSettingMenu":Z
    .restart local v218    # "isWfcSettingMenu":Z
    const-string v1, " isWfcQuicksettingMenu "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v216

    .end local v216    # "isWfcQuicksettingMenu":Z
    .local v1, "isWfcQuicksettingMenu":Z
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 985
    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    return-void
.end method

.method public static deinitialize(I)V
    .locals 1
    .param p0, "phoneId"    # I

    .line 1054
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1055
    sput-object v0, Lcom/sec/epdg/EpdgContentReader;->mInstance:Lcom/sec/epdg/EpdgContentReader;

    goto :goto_0

    .line 1057
    :cond_0
    sput-object v0, Lcom/sec/epdg/EpdgContentReader;->mInstance2:Lcom/sec/epdg/EpdgContentReader;

    .line 1059
    :goto_0
    return-void
.end method

.method public static getInstance(I)Lcom/sec/epdg/EpdgContentReader;
    .locals 1
    .param p0, "phoneId"    # I

    .line 55
    if-nez p0, :cond_1

    .line 56
    sget-object v0, Lcom/sec/epdg/EpdgContentReader;->mInstance:Lcom/sec/epdg/EpdgContentReader;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/sec/epdg/EpdgContentReader;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgContentReader;-><init>(I)V

    sput-object v0, Lcom/sec/epdg/EpdgContentReader;->mInstance:Lcom/sec/epdg/EpdgContentReader;

    .line 59
    :cond_0
    sget-object v0, Lcom/sec/epdg/EpdgContentReader;->mInstance:Lcom/sec/epdg/EpdgContentReader;

    return-object v0

    .line 61
    :cond_1
    sget-object v0, Lcom/sec/epdg/EpdgContentReader;->mInstance2:Lcom/sec/epdg/EpdgContentReader;

    if-nez v0, :cond_2

    .line 62
    new-instance v0, Lcom/sec/epdg/EpdgContentReader;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgContentReader;-><init>(I)V

    sput-object v0, Lcom/sec/epdg/EpdgContentReader;->mInstance2:Lcom/sec/epdg/EpdgContentReader;

    .line 64
    :cond_2
    sget-object v0, Lcom/sec/epdg/EpdgContentReader;->mInstance2:Lcom/sec/epdg/EpdgContentReader;

    return-object v0
.end method

.method private makeIwlanApn(Landroid/database/Cursor;)Lcom/sec/epdg/IWlanApnSetting;
    .locals 101
    .param p1, "messagesCursor"    # Landroid/database/Cursor;

    .line 122
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_CONN_NAME:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 123
    invoke-virtual {v2}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 122
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "iWlanSettingName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 126
    .local v3, "ipsecUserAuthval":Lcom/sec/epdg/DataType/IWlanEnum$IPSecUserAuthState;
    sget-object v4, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_USER_AUTH_TYPE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 127
    invoke-virtual {v4}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 126
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 128
    .local v15, "ipsecUserAuthvalStr":Ljava/lang/String;
    const-string v4, "true"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "false"

    if-eqz v5, :cond_0

    .line 129
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IPSecUserAuthState;->ENABLED:Lcom/sec/epdg/DataType/IWlanEnum$IPSecUserAuthState;

    move-object/from16 v37, v3

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 131
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IPSecUserAuthState;->DISABLED:Lcom/sec/epdg/DataType/IWlanEnum$IPSecUserAuthState;

    move-object/from16 v37, v3

    goto :goto_0

    .line 130
    :cond_1
    move-object/from16 v37, v3

    .line 133
    .end local v3    # "ipsecUserAuthval":Lcom/sec/epdg/DataType/IWlanEnum$IPSecUserAuthState;
    .local v37, "ipsecUserAuthval":Lcom/sec/epdg/DataType/IWlanEnum$IPSecUserAuthState;
    :goto_0
    const/4 v3, 0x0

    .line 134
    .local v3, "pfsval":Lcom/sec/epdg/DataType/IWlanEnum$PfsState;
    sget-object v5, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_PFS:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 135
    invoke-virtual {v5}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 134
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 136
    .local v14, "pfsvalStr":Ljava/lang/String;
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 137
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$PfsState;->ENABLED:Lcom/sec/epdg/DataType/IWlanEnum$PfsState;

    move-object/from16 v38, v3

    goto :goto_1

    .line 138
    :cond_2
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 139
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$PfsState;->DISABLED:Lcom/sec/epdg/DataType/IWlanEnum$PfsState;

    move-object/from16 v38, v3

    goto :goto_1

    .line 138
    :cond_3
    move-object/from16 v38, v3

    .line 141
    .end local v3    # "pfsval":Lcom/sec/epdg/DataType/IWlanEnum$PfsState;
    .local v38, "pfsval":Lcom/sec/epdg/DataType/IWlanEnum$PfsState;
    :goto_1
    const/4 v3, 0x0

    .line 142
    .local v3, "iptype":Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;
    sget-object v5, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_SUBNET_TYPE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 143
    invoke-virtual {v5}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 142
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 144
    .local v13, "iptypeStr":Ljava/lang/String;
    const-string v5, "IPV4"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 145
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;->IP_VERSION_4:Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    move-object/from16 v39, v3

    goto :goto_2

    .line 146
    :cond_4
    const-string v5, "IPV6"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 147
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;->IP_VERSION_6:Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    move-object/from16 v39, v3

    goto :goto_2

    .line 149
    :cond_5
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;->IP_VERSION_V4V6:Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    move-object/from16 v39, v3

    .line 151
    .end local v3    # "iptype":Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;
    .local v39, "iptype":Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;
    :goto_2
    const/4 v3, 0x0

    .line 152
    .local v3, "ownUriType":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    sget-object v5, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_OWN_URI_TYPE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 153
    invoke-virtual {v5}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 152
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 154
    .local v12, "ownUriTypeStr":Ljava/lang/String;
    const-string v5, "IPV4_ADDR"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "KEY_ID"

    const-string v9, "DN"

    const-string v10, "USER_FQDN"

    const-string v11, "FQDN"

    move-object/from16 v16, v3

    .end local v3    # "ownUriType":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    .local v16, "ownUriType":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    const-string v3, "IPV6_ADDR"

    if-eqz v7, :cond_6

    .line 155
    sget-object v7, Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;->IPV4_ADDR:Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;

    move-object/from16 v40, v7

    .end local v16    # "ownUriType":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    .local v7, "ownUriType":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    goto :goto_3

    .line 156
    .end local v7    # "ownUriType":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    .restart local v16    # "ownUriType":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    :cond_6
    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 157
    sget-object v7, Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;->IPV6_ADDR:Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;

    move-object/from16 v40, v7

    .end local v16    # "ownUriType":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    .restart local v7    # "ownUriType":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    goto :goto_3

    .line 158
    .end local v7    # "ownUriType":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    .restart local v16    # "ownUriType":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    :cond_7
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 159
    sget-object v7, Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;->FQDN:Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;

    move-object/from16 v40, v7

    .end local v16    # "ownUriType":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    .restart local v7    # "ownUriType":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    goto :goto_3

    .line 160
    .end local v7    # "ownUriType":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    .restart local v16    # "ownUriType":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    :cond_8
    invoke-virtual {v12, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 161
    sget-object v7, Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;->USER_FQDN:Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;

    move-object/from16 v40, v7

    .end local v16    # "ownUriType":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    .restart local v7    # "ownUriType":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    goto :goto_3

    .line 162
    .end local v7    # "ownUriType":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    .restart local v16    # "ownUriType":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    :cond_9
    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 163
    sget-object v7, Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;->DN:Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;

    move-object/from16 v40, v7

    .end local v16    # "ownUriType":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    .restart local v7    # "ownUriType":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    goto :goto_3

    .line 164
    .end local v7    # "ownUriType":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    .restart local v16    # "ownUriType":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    :cond_a
    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 165
    sget-object v7, Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;->KEY_ID:Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;

    move-object/from16 v40, v7

    .end local v16    # "ownUriType":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    .restart local v7    # "ownUriType":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    goto :goto_3

    .line 164
    .end local v7    # "ownUriType":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    .restart local v16    # "ownUriType":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    :cond_b
    move-object/from16 v40, v16

    .line 167
    .end local v16    # "ownUriType":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    .local v40, "ownUriType":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    :goto_3
    sget-object v7, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_OWN_IDENTITY:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 168
    invoke-virtual {v7}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 167
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 170
    .local v41, "ownUri":Ljava/lang/String;
    const/4 v7, 0x0

    .line 171
    .local v7, "remoteuritype":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    sget-object v16, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_REMOTE_URI_TYPE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 172
    move-object/from16 v17, v7

    .end local v7    # "remoteuritype":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    .local v17, "remoteuritype":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    invoke-virtual/range {v16 .. v16}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 171
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 173
    .local v7, "remoteuritypeStr":Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 174
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;->IPV4_ADDR:Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;

    move-object/from16 v42, v3

    .end local v17    # "remoteuritype":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    .local v3, "remoteuritype":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    goto :goto_4

    .line 175
    .end local v3    # "remoteuritype":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    .restart local v17    # "remoteuritype":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    :cond_c
    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 176
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;->IPV6_ADDR:Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;

    move-object/from16 v42, v3

    .end local v17    # "remoteuritype":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    .restart local v3    # "remoteuritype":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    goto :goto_4

    .line 177
    .end local v3    # "remoteuritype":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    .restart local v17    # "remoteuritype":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    :cond_d
    invoke-virtual {v7, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 178
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;->FQDN:Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;

    move-object/from16 v42, v3

    .end local v17    # "remoteuritype":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    .restart local v3    # "remoteuritype":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    goto :goto_4

    .line 179
    .end local v3    # "remoteuritype":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    .restart local v17    # "remoteuritype":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    :cond_e
    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 180
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;->USER_FQDN:Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;

    move-object/from16 v42, v3

    .end local v17    # "remoteuritype":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    .restart local v3    # "remoteuritype":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    goto :goto_4

    .line 181
    .end local v3    # "remoteuritype":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    .restart local v17    # "remoteuritype":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    :cond_f
    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 182
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;->DN:Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;

    move-object/from16 v42, v3

    .end local v17    # "remoteuritype":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    .restart local v3    # "remoteuritype":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    goto :goto_4

    .line 183
    .end local v3    # "remoteuritype":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    .restart local v17    # "remoteuritype":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    :cond_10
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 184
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;->KEY_ID:Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;

    move-object/from16 v42, v3

    .end local v17    # "remoteuritype":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    .restart local v3    # "remoteuritype":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    goto :goto_4

    .line 183
    .end local v3    # "remoteuritype":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    .restart local v17    # "remoteuritype":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    :cond_11
    move-object/from16 v42, v17

    .line 186
    .end local v17    # "remoteuritype":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    .local v42, "remoteuritype":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    :goto_4
    sget-object v3, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_REMOTE_IDENTITY:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 187
    invoke-virtual {v3}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 186
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 189
    .local v43, "remoteUri":Ljava/lang/String;
    sget-object v3, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_APN:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 190
    invoke-virtual {v3}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 189
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 192
    .local v11, "apnType":Ljava/lang/String;
    const/4 v3, 0x0

    .line 193
    .local v3, "ipsecauthtype":Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;
    sget-object v5, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_AUTH_TYPE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 194
    invoke-virtual {v5}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 193
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 195
    .local v10, "ipsecauthtypeStr":Ljava/lang/String;
    const-string v5, "EAP"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 196
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;->EAP:Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;

    move-object/from16 v44, v3

    goto :goto_5

    .line 197
    :cond_12
    const-string v5, "Pre Shared"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 198
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;->PRE_SHARED:Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;

    move-object/from16 v44, v3

    goto :goto_5

    .line 199
    :cond_13
    const-string v5, "Public Key"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 200
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;->PUBLIC_KEY:Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;

    move-object/from16 v44, v3

    goto :goto_5

    .line 199
    :cond_14
    move-object/from16 v44, v3

    .line 202
    .end local v3    # "ipsecauthtype":Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;
    .local v44, "ipsecauthtype":Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;
    :goto_5
    const/4 v3, 0x0

    .line 203
    .local v3, "adapterConf":Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;
    sget-object v45, Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;->VIRTUAL_ADAPTER_CONF_NONE_TUN:Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;

    .line 205
    .end local v3    # "adapterConf":Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;
    .local v45, "adapterConf":Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;
    const/4 v3, 0x0

    .line 206
    .local v3, "tunnelmode":Lcom/sec/epdg/DataType/IWlanEnum$TunnelModeType;
    sget-object v5, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_TUNNEL_TYPE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 207
    invoke-virtual {v5}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 206
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 208
    .local v9, "tunnelmodeStr":Ljava/lang/String;
    const-string v5, "IPSEC_RAC"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 209
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$TunnelModeType;->IPSEC_RAC:Lcom/sec/epdg/DataType/IWlanEnum$TunnelModeType;

    move-object/from16 v46, v3

    goto :goto_6

    .line 210
    :cond_15
    const-string v5, "L2TP_OVER_IPSEC"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 211
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$TunnelModeType;->L2TP_OVER_IPSEC:Lcom/sec/epdg/DataType/IWlanEnum$TunnelModeType;

    move-object/from16 v46, v3

    goto :goto_6

    .line 210
    :cond_16
    move-object/from16 v46, v3

    .line 213
    .end local v3    # "tunnelmode":Lcom/sec/epdg/DataType/IWlanEnum$TunnelModeType;
    .local v46, "tunnelmode":Lcom/sec/epdg/DataType/IWlanEnum$TunnelModeType;
    :goto_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v3

    .line 214
    .local v8, "ipsecencryptiontype":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 215
    sget-object v3, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IPSEC_ENCRYPTION:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 216
    invoke-virtual {v3}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 215
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 216
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 217
    .local v5, "ipsecencryptiontypeStr":Ljava/lang/String;
    const-string v3, "IPSEC_ENCRYPTION_3DES_CBC"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 218
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_3DES_CBC:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_17
    nop

    .line 220
    const-string v3, "IPSEC_ENCRYPTION_AES_CBC_128"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 221
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CBC_128:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_18
    nop

    .line 223
    const-string v3, "IPSEC_ENCRYPTION_AES_CBC_192"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 224
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CBC_192:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_19
    nop

    .line 226
    const-string v3, "IPSEC_ENCRYPTION_AES_CBC_256"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 227
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CBC_256:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_1a
    nop

    .line 229
    const-string v3, "IPSEC_ENCRYPTION_AES_CTR_128"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 230
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CTR_128:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_1b
    nop

    .line 232
    const-string v3, "IPSEC_ENCRYPTION_AES_CTR_192"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 233
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CTR_192:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_1c
    nop

    .line 235
    const-string v3, "IPSEC_ENCRYPTION_AES_CTR_256"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 236
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CTR_256:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_1d
    nop

    .line 238
    const-string v3, "IPSEC_ENCRYPTION_AES_GCM_128"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 239
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_GCM_128:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_1e
    nop

    .line 241
    const-string v3, "IPSEC_ENCRYPTION_AES_GCM_192"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 242
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_GCM_192:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_1f
    nop

    .line 244
    const-string v3, "IPSEC_ENCRYPTION_AES_GCM_256"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 245
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_GCM_256:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_20
    const-string v3, "IPSEC_ENCRYPTION_BASIC"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 247
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_BASIC:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_21
    const-string v3, "IPSEC_ENCRYPTION_ANY"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 249
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_ANY:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_22
    nop

    .line 251
    const-string v3, "IPSEC_ENCRYPTION_SUITE_B_GCM_128"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 252
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_SUITE_B_GCM_128:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_23
    nop

    .line 254
    const-string v3, "IPSEC_ENCRYPTION_SUITE_B_GCM_256"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 255
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_SUITE_B_GCM_256:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_24
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v3, "ipsecintegrity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 259
    sget-object v16, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IPSEC_INTEGRITY:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 260
    move-object/from16 v17, v5

    .end local v5    # "ipsecencryptiontypeStr":Ljava/lang/String;
    .local v17, "ipsecencryptiontypeStr":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 259
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 260
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 261
    .local v5, "ipsecintegrityStr":Ljava/lang/String;
    move-object/from16 v16, v7

    .end local v7    # "remoteuritypeStr":Ljava/lang/String;
    .local v16, "remoteuritypeStr":Ljava/lang/String;
    const-string v7, "IPSEC_INTEGRITY_HMAC_MD5_96"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 262
    sget-object v7, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_MD5_96:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_25
    const-string v7, "IPSEC_INTEGRITY_HMAC_SHA1_96"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 264
    sget-object v7, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA1_96:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_26
    const-string v7, "IPSEC_INTEGRITY_AES_XCBC_MAC_96"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 266
    sget-object v7, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_XCBC_MAC_96:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_27
    const-string v7, "IPSEC_INTEGRITY_HMAC_SHA_256_128"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 268
    sget-object v7, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA_256_128:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_28
    const-string v7, "IPSEC_INTEGRITY_HMAC_SHA_384_192"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 270
    sget-object v7, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA_384_192:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_29
    const-string v7, "IPSEC_INTEGRITY_HMAC_SHA_512_256"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 272
    sget-object v7, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA_512_256:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_2a
    const-string v7, "IPSEC_INTEGRITY_AES_GMAC_128"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 274
    sget-object v7, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_GMAC_128:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_2b
    const-string v7, "IPSEC_INTEGRITY_AES_GMAC_192"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 276
    sget-object v7, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_GMAC_192:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_2c
    const-string v7, "IPSEC_INTEGRITY_AES_GMAC_256"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 278
    sget-object v7, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_GMAC_256:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_2d
    const-string v7, "IPSEC_INTEGRITY_BASIC"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 280
    sget-object v7, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_BASIC:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_2e
    const-string v7, "IPSEC_INTEGRITY_ANY"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 282
    sget-object v7, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_ANY:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_2f
    const-string v7, "IPSEC_INTEGRITY_NULL"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 284
    sget-object v7, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_NULL:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_30
    const-string v7, "IPSEC_INTEGRITY_SUITE_B_GCM_128"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 286
    sget-object v7, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_SUITE_B_GCM_128:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_31
    const-string v7, "IPSEC_INTEGRITY_SUITE_B_GCM_256"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_32

    .line 288
    move-object/from16 v18, v5

    .end local v5    # "ipsecintegrityStr":Ljava/lang/String;
    .local v18, "ipsecintegrityStr":Ljava/lang/String;
    sget-object v5, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_SUITE_B_GCM_256:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 287
    .end local v18    # "ipsecintegrityStr":Ljava/lang/String;
    .restart local v5    # "ipsecintegrityStr":Ljava/lang/String;
    :cond_32
    move-object/from16 v18, v5

    .line 290
    .end local v5    # "ipsecintegrityStr":Ljava/lang/String;
    .restart local v18    # "ipsecintegrityStr":Ljava/lang/String;
    :goto_7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v5, "ipsecdhgroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 292
    sget-object v19, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IPSEC_GROUP:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 293
    move-object/from16 v20, v3

    .end local v3    # "ipsecintegrity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;>;"
    .local v20, "ipsecintegrity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;>;"
    invoke-virtual/range {v19 .. v19}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 292
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 293
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 294
    .local v3, "ipsecdhgroupStr":Ljava/lang/String;
    move-object/from16 v19, v8

    .end local v8    # "ipsecencryptiontype":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;>;"
    .local v19, "ipsecencryptiontype":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;>;"
    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 v21, v9

    .end local v9    # "tunnelmodeStr":Ljava/lang/String;
    .local v21, "tunnelmodeStr":Ljava/lang/String;
    const-string v9, "\\s*,\\s*"

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v23, v3

    .end local v3    # "ipsecdhgroupStr":Ljava/lang/String;
    .local v23, "ipsecdhgroupStr":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v8, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 295
    .local v8, "ipsecdhgroupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "IPSEC_GROUP_MODP_768"

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 296
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_768:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_33
    const-string v3, "IPSEC_GROUP_MODP_1024"

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 298
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_1024:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_34
    const-string v3, "IPSEC_GROUP_MODP_1536"

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 300
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_1536:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    :cond_35
    const-string v3, "IPSEC_GROUP_MODP_2048"

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 302
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_2048:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_36
    const-string v3, "IPSEC_GROUP_MODP_3072"

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 304
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_3072:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_37
    const-string v3, "IPSEC_GROUP_MODP_4096"

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 306
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_4096:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_38
    const-string v3, "IPSEC_GROUP_MODP_6144"

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 308
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_6144:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_39
    const-string v3, "IPSEC_GROUP_MODP_8192"

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 310
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_8192:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    :cond_3a
    const-string v3, "IPSEC_GROUP_ECP_256"

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 312
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_256:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    :cond_3b
    const-string v3, "IPSEC_GROUP_ECP_384"

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 314
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_384:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_3c
    const-string v3, "IPSEC_GROUP_ECP_521"

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 316
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_521:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_3d
    const-string v3, "IPSEC_GROUP_MODP_1024_160"

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 318
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_1024_160:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_3e
    const-string v3, "IPSEC_GROUP_MODP_2048_224"

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 320
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_2048_224:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_3f
    const-string v3, "IPSEC_GROUP_MODP_2048_256"

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 322
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_2048_256:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    :cond_40
    const-string v3, "IPSEC_GROUP_ECP_192"

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 324
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_192:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_41
    const-string v3, "IPSEC_GROUP_ECP_224"

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 326
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_224:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    :cond_42
    const-string v3, "IPSEC_GROUP_ANY"

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 328
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ANY:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    :cond_43
    const-string v3, "IPSEC_GROUP_ANY_OR_NONE"

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 330
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ANY_OR_NONE:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_44
    const/4 v3, 0x0

    .line 333
    .local v3, "ipseclifetype":Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;
    sget-object v22, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IPSEC_LIFETYPE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 334
    move-object/from16 v24, v3

    .end local v3    # "ipseclifetype":Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;
    .local v24, "ipseclifetype":Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;
    invoke-virtual/range {v22 .. v22}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 333
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 335
    .local v3, "ipseclifetypeStr":Ljava/lang/String;
    move-object/from16 v22, v5

    .end local v5    # "ipsecdhgroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;>;"
    .local v22, "ipsecdhgroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;>;"
    const-string v5, "IPSEC_LIFE_TYPE_SECONDS"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 336
    sget-object v5, Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;->IPSEC_LIFE_TYPE_SECONDS:Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;

    move-object/from16 v47, v5

    .end local v24    # "ipseclifetype":Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;
    .local v5, "ipseclifetype":Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;
    goto :goto_8

    .line 337
    .end local v5    # "ipseclifetype":Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;
    .restart local v24    # "ipseclifetype":Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;
    :cond_45
    const-string v5, "IPSEC_LIFE_TYPE_KILOBYTES"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 338
    sget-object v5, Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;->IPSEC_LIFE_TYPE_KILOBYTES:Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;

    move-object/from16 v47, v5

    .end local v24    # "ipseclifetype":Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;
    .restart local v5    # "ipseclifetype":Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;
    goto :goto_8

    .line 337
    .end local v5    # "ipseclifetype":Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;
    .restart local v24    # "ipseclifetype":Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;
    :cond_46
    move-object/from16 v47, v24

    .line 341
    .end local v24    # "ipseclifetype":Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;
    .local v47, "ipseclifetype":Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;
    :goto_8
    sget-object v5, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IPSEC_LIFE_VALUE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 342
    invoke-virtual {v5}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 341
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v48

    .line 343
    .local v48, "ipseclifevalStr":Ljava/lang/String;
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v49

    .line 345
    .local v49, "ipseclifeval":I
    const/4 v5, 0x0

    .line 346
    .local v5, "ikeversion":Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;
    sget-object v24, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_VERSION:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 347
    move-object/from16 v25, v3

    .end local v3    # "ipseclifetypeStr":Ljava/lang/String;
    .local v25, "ipseclifetypeStr":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 346
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 348
    .local v3, "ikeversionStr":Ljava/lang/String;
    move-object/from16 v24, v5

    .end local v5    # "ikeversion":Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;
    .local v24, "ikeversion":Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;
    const-string v5, "IKE_VERSION_1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 349
    sget-object v5, Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;->IKE_VERSION_1:Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;

    move-object/from16 v50, v5

    .end local v24    # "ikeversion":Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;
    .restart local v5    # "ikeversion":Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;
    goto :goto_9

    .line 350
    .end local v5    # "ikeversion":Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;
    .restart local v24    # "ikeversion":Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;
    :cond_47
    const-string v5, "IKE_VERSION_2"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 351
    sget-object v5, Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;->IKE_VERSION_2:Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;

    move-object/from16 v50, v5

    .end local v24    # "ikeversion":Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;
    .restart local v5    # "ikeversion":Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;
    goto :goto_9

    .line 350
    .end local v5    # "ikeversion":Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;
    .restart local v24    # "ikeversion":Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;
    :cond_48
    move-object/from16 v50, v24

    .line 353
    .end local v24    # "ikeversion":Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;
    .local v50, "ikeversion":Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;
    :goto_9
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .local v5, "ikeencryption":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 355
    sget-object v24, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_ENCRYPTION:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 356
    move-object/from16 v26, v3

    .end local v3    # "ikeversionStr":Ljava/lang/String;
    .local v26, "ikeversionStr":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 355
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 356
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 357
    .local v3, "ikeencryptionStr":Ljava/lang/String;
    move-object/from16 v24, v8

    .end local v8    # "ipsecdhgroupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v24, "ipsecdhgroupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v8, "IKE_ENCRYPTION_3DES_CBC"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_49

    .line 358
    sget-object v8, Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_3DES_CBC:Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    :cond_49
    const-string v8, "IKE_ENCRYPTION_AES_CBC_128"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4a

    .line 360
    sget-object v8, Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_128:Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    :cond_4a
    const-string v8, "IKE_ENCRYPTION_AES_CBC_192"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 362
    sget-object v8, Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_192:Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_4b
    const-string v8, "IKE_ENCRYPTION_AES_CBC_256"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4c

    .line 364
    sget-object v8, Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_256:Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    :cond_4c
    const-string v8, "IKE_ENCRYPTION_AES_CTR_128"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4d

    .line 366
    sget-object v8, Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_128:Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    :cond_4d
    const-string v8, "IKE_ENCRYPTION_AES_CTR_192"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 368
    sget-object v8, Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_192:Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    :cond_4e
    const-string v8, "IKE_ENCRYPTION_AES_CTR_256"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 370
    sget-object v8, Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_256:Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_4f
    const-string v8, "IKE_ENCRYPTION_AES_GCM_128"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_50

    .line 372
    sget-object v8, Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_128:Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    :cond_50
    const-string v8, "IKE_ENCRYPTION_AES_GCM_192"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_51

    .line 374
    sget-object v8, Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_192:Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    :cond_51
    const-string v8, "IKE_ENCRYPTION_AES_GCM_256"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_52

    .line 376
    sget-object v8, Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_256:Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    :cond_52
    const-string v8, "IKE_ENCRYPTION_BASIC"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_53

    .line 378
    sget-object v8, Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_BASIC:Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    :cond_53
    const-string v8, "IKE_ENCRYPTION_ANY"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_54

    .line 380
    sget-object v8, Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_ANY:Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    :cond_54
    const-string v8, "IKE_ENCRYPTION_SUITE_B_GCM_128"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_55

    .line 382
    sget-object v8, Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_SUITE_B_GCM_128:Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    :cond_55
    const-string v8, "IKE_ENCRYPTION_SUITE_B_GCM_256"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_56

    .line 384
    sget-object v8, Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_SUITE_B_GCM_256:Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_56
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v8, "ikeintegrity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 388
    sget-object v27, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_INTEGRITY:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 389
    move-object/from16 v28, v3

    .end local v3    # "ikeencryptionStr":Ljava/lang/String;
    .local v28, "ikeencryptionStr":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 388
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 389
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 390
    .local v3, "ikeintegrityStr":Ljava/lang/String;
    move-object/from16 v27, v5

    .end local v5    # "ikeencryption":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;>;"
    .local v27, "ikeencryption":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;>;"
    const-string v5, "IKE_INTEGRITY_HMAC_MD5_96"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 391
    sget-object v5, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_MD5_96:Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    :cond_57
    const-string v5, "IKE_INTEGRITY_HMAC_SHA1_96"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 393
    sget-object v5, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA1_96:Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    :cond_58
    const-string v5, "IKE_INTEGRITY_AES_XCBC_MAC_96"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 395
    sget-object v5, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_AES_XCBC_MAC_96:Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    :cond_59
    const-string v5, "IKE_INTEGRITY_HMAC_SHA_256_128"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 397
    sget-object v5, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_256_128:Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    :cond_5a
    const-string v5, "IKE_INTEGRITY_HMAC_SHA_384_192"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 399
    sget-object v5, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_384_192:Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    :cond_5b
    const-string v5, "IKE_INTEGRITY_HMAC_SHA_512_256"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 401
    sget-object v5, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_512_256:Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_5c
    const-string v5, "IKE_INTEGRITY_BASIC"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 403
    sget-object v5, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_BASIC:Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    :cond_5d
    const-string v5, "IKE_INTEGRITY_ANY"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 405
    sget-object v5, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_ANY:Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    :cond_5e
    const-string v5, "IKE_INTEGRITY_SUITE_B_GCM_128"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 407
    sget-object v5, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_SUITE_B_GCM_128:Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    :cond_5f
    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 409
    sget-object v5, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_SUITE_B_GCM_256:Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    :cond_60
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v5

    .line 412
    .local v7, "ikedhgroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 413
    sget-object v5, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_GROUP:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 414
    invoke-virtual {v5}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 413
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 414
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 415
    .local v5, "ikedhgroupStr":Ljava/lang/String;
    move-object/from16 v29, v3

    .end local v3    # "ikeintegrityStr":Ljava/lang/String;
    .local v29, "ikeintegrityStr":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v9, v3

    .line 416
    .local v9, "ikedhgroupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "IKE_GROUP_MODP_768"

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 417
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_768:Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    :cond_61
    const-string v3, "IKE_GROUP_MODP_1024"

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 419
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_1024:Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_62
    const-string v3, "IKE_GROUP_MODP_1536"

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 421
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_1536:Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    :cond_63
    const-string v3, "IKE_GROUP_MODP_2048"

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 423
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_2048:Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    :cond_64
    const-string v3, "IKE_GROUP_MODP_3072"

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 425
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_3072:Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    :cond_65
    const-string v3, "IKE_GROUP_MODP_4096"

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 427
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_4096:Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    :cond_66
    const-string v3, "IKE_GROUP_MODP_6144"

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 429
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_6144:Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    :cond_67
    const-string v3, "IKE_GROUP_MODP_8192"

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 431
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_8192:Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_68
    const-string v3, "IKE_GROUP_ECP_256"

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 433
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_256:Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    :cond_69
    const-string v3, "IKE_GROUP_ECP_384"

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 435
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_384:Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    :cond_6a
    const-string v3, "IKE_GROUP_ECP_521"

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 437
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_521:Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    :cond_6b
    const-string v3, "IKE_GROUP_MODP_1024_160"

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 439
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_1024_160:Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    :cond_6c
    const-string v3, "IKE_GROUP_MODP_2048_224"

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 441
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_2048_224:Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    :cond_6d
    const-string v3, "IKE_GROUP_MODP_2048_256"

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 443
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_2048_256:Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    :cond_6e
    const-string v3, "IKE_GROUP_ECP_192"

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 445
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_192:Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    :cond_6f
    const-string v3, "IKE_GROUP_ECP_224"

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 447
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_224:Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    :cond_70
    const-string v3, "IKE_GROUP_ANY"

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 449
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->IKE_GROUP_ANY:Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    :cond_71
    const-string v3, "IKE_GROUP_SUITE_B_GCM_128"

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 451
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->IKE_GROUP_SUITE_B_GCM_128:Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    :cond_72
    const-string v3, "IKE_GROUP_SUITE_B_GCM_256"

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 453
    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->IKE_GROUP_SUITE_B_GCM_256:Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    :cond_73
    sget-object v3, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_LIFE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 457
    invoke-virtual {v3}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 456
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v51

    .line 458
    .local v51, "ikelifeStr":Ljava/lang/String;
    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v52

    .line 461
    .local v52, "ikelife":I
    sget-object v3, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_WINDOW_SIZE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 462
    invoke-virtual {v3}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 461
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v53

    .line 463
    .local v53, "ikewindowStr":Ljava/lang/String;
    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v54

    .line 466
    .local v54, "ikewindow":I
    sget-object v3, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_CONNECTION_TIMEOUT:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 467
    invoke-virtual {v3}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 466
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v55

    .line 468
    .local v55, "ikeconntimeoutStr":Ljava/lang/String;
    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v56

    .line 471
    .local v56, "ikeconntimeout":I
    sget-object v3, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_DPD_TIMEOUT:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 472
    invoke-virtual {v3}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 471
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v57

    .line 473
    .local v57, "ikedpdtimeoutStr":Ljava/lang/String;
    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    .line 475
    .local v58, "ikedpdtimeout":I
    const/4 v3, 0x0

    .line 476
    .local v3, "eaptype":Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;
    sget-object v30, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_EAP_TYPE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 477
    move-object/from16 v31, v3

    .end local v3    # "eaptype":Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;
    .local v31, "eaptype":Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;
    invoke-virtual/range {v30 .. v30}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 476
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 478
    .local v3, "eaptypeStr":Ljava/lang/String;
    move-object/from16 v30, v5

    .end local v5    # "ikedhgroupStr":Ljava/lang/String;
    .local v30, "ikedhgroupStr":Ljava/lang/String;
    const-string v5, "EAP_METHOD_MD5_CHALLENGE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_74

    .line 479
    sget-object v5, Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;->EAP_METHOD_MD5_CHALLENGE:Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;

    move-object/from16 v59, v5

    .end local v31    # "eaptype":Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;
    .local v5, "eaptype":Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;
    goto :goto_a

    .line 480
    .end local v5    # "eaptype":Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;
    .restart local v31    # "eaptype":Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;
    :cond_74
    const-string v5, "EAP_METHOD_SIM"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 481
    sget-object v5, Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;->EAP_METHOD_SIM:Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;

    move-object/from16 v59, v5

    .end local v31    # "eaptype":Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;
    .restart local v5    # "eaptype":Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;
    goto :goto_a

    .line 482
    .end local v5    # "eaptype":Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;
    .restart local v31    # "eaptype":Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;
    :cond_75
    const-string v5, "EAP_METHOD_AKA"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_76

    .line 483
    sget-object v5, Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;->EAP_METHOD_AKA:Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;

    move-object/from16 v59, v5

    .end local v31    # "eaptype":Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;
    .restart local v5    # "eaptype":Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;
    goto :goto_a

    .line 484
    .end local v5    # "eaptype":Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;
    .restart local v31    # "eaptype":Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;
    :cond_76
    const-string v5, "EAP_METHOD_MSCHAPV2"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_77

    .line 485
    sget-object v5, Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;->EAP_METHOD_MSCHAPV2:Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;

    move-object/from16 v59, v5

    .end local v31    # "eaptype":Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;
    .restart local v5    # "eaptype":Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;
    goto :goto_a

    .line 484
    .end local v5    # "eaptype":Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;
    .restart local v31    # "eaptype":Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;
    :cond_77
    move-object/from16 v59, v31

    .line 488
    .end local v31    # "eaptype":Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;
    .local v59, "eaptype":Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;
    :goto_a
    sget-object v5, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_NAT_VALUE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 489
    invoke-virtual {v5}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 488
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v60

    .line 490
    .local v60, "ikenatvalStr":Ljava/lang/String;
    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v61

    .line 492
    .local v61, "ikenatval":I
    const/4 v5, 0x0

    .line 493
    .local v5, "pcscfVendorAt":Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;
    sget-object v31, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_VENDOR_ATTRIBUTE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 494
    move-object/from16 v32, v3

    .end local v3    # "eaptypeStr":Ljava/lang/String;
    .local v32, "eaptypeStr":Ljava/lang/String;
    invoke-virtual/range {v31 .. v31}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 493
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 495
    .local v3, "pcscfVendorAtStr":Ljava/lang/String;
    move-object/from16 v31, v5

    .end local v5    # "pcscfVendorAt":Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;
    .local v31, "pcscfVendorAt":Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;
    const-string v5, "NONE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_78

    .line 496
    sget-object v31, Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;->PCSCF_CONF_NONE:Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;

    move-object/from16 v33, v7

    move-object/from16 v62, v31

    goto :goto_b

    .line 497
    :cond_78
    move-object/from16 v33, v7

    .end local v7    # "ikedhgroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;>;"
    .local v33, "ikedhgroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;>;"
    const-string v7, "P-CSCF-V4"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_79

    .line 498
    sget-object v7, Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;->PCSCF_CONF_V4:Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;

    move-object/from16 v62, v7

    .end local v31    # "pcscfVendorAt":Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;
    .local v7, "pcscfVendorAt":Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;
    goto :goto_b

    .line 499
    .end local v7    # "pcscfVendorAt":Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;
    .restart local v31    # "pcscfVendorAt":Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;
    :cond_79
    const-string v7, "P-CSCF-V6"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7a

    .line 500
    sget-object v7, Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;->PCSCF_CONF_V6:Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;

    move-object/from16 v62, v7

    .end local v31    # "pcscfVendorAt":Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;
    .restart local v7    # "pcscfVendorAt":Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;
    goto :goto_b

    .line 501
    .end local v7    # "pcscfVendorAt":Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;
    .restart local v31    # "pcscfVendorAt":Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;
    :cond_7a
    const-string v7, "P-CSCF-V4V6"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7b

    .line 502
    sget-object v7, Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;->PCSCF_CONF_V4V6:Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;

    move-object/from16 v62, v7

    .end local v31    # "pcscfVendorAt":Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;
    .restart local v7    # "pcscfVendorAt":Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;
    goto :goto_b

    .line 501
    .end local v7    # "pcscfVendorAt":Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;
    .restart local v31    # "pcscfVendorAt":Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;
    :cond_7b
    move-object/from16 v62, v31

    .line 504
    .end local v31    # "pcscfVendorAt":Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;
    .local v62, "pcscfVendorAt":Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;
    :goto_b
    const/4 v7, 0x0

    .line 505
    .local v7, "mobikeval":Lcom/sec/epdg/DataType/IWlanEnum$Mobike;
    sget-object v31, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_MOBIKE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 506
    move-object/from16 v34, v3

    .end local v3    # "pcscfVendorAtStr":Ljava/lang/String;
    .local v34, "pcscfVendorAtStr":Ljava/lang/String;
    invoke-virtual/range {v31 .. v31}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 505
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 507
    .local v3, "mobikevalStr":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_7c

    .line 508
    sget-object v7, Lcom/sec/epdg/DataType/IWlanEnum$Mobike;->ENABLED:Lcom/sec/epdg/DataType/IWlanEnum$Mobike;

    move-object/from16 v63, v7

    goto :goto_c

    .line 509
    :cond_7c
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_7d

    .line 510
    sget-object v7, Lcom/sec/epdg/DataType/IWlanEnum$Mobike;->DISABLED:Lcom/sec/epdg/DataType/IWlanEnum$Mobike;

    move-object/from16 v63, v7

    goto :goto_c

    .line 509
    :cond_7d
    move-object/from16 v63, v7

    .line 512
    .end local v7    # "mobikeval":Lcom/sec/epdg/DataType/IWlanEnum$Mobike;
    .local v63, "mobikeval":Lcom/sec/epdg/DataType/IWlanEnum$Mobike;
    :goto_c
    const/4 v7, 0x0

    .line 513
    .local v7, "fastReauthval":Lcom/sec/epdg/DataType/IWlanEnum$FastReauth;
    sget-object v31, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_FASTREAUTH:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 514
    move-object/from16 v35, v3

    .end local v3    # "mobikevalStr":Ljava/lang/String;
    .local v35, "mobikevalStr":Ljava/lang/String;
    invoke-virtual/range {v31 .. v31}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 513
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 515
    .local v3, "fastReauthvalStr":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_7e

    .line 516
    sget-object v7, Lcom/sec/epdg/DataType/IWlanEnum$FastReauth;->ENABLED:Lcom/sec/epdg/DataType/IWlanEnum$FastReauth;

    move-object/from16 v64, v7

    goto :goto_d

    .line 517
    :cond_7e
    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_7f

    .line 518
    sget-object v7, Lcom/sec/epdg/DataType/IWlanEnum$FastReauth;->DISABLED:Lcom/sec/epdg/DataType/IWlanEnum$FastReauth;

    move-object/from16 v64, v7

    goto :goto_d

    .line 517
    :cond_7f
    move-object/from16 v64, v7

    .line 520
    .end local v7    # "fastReauthval":Lcom/sec/epdg/DataType/IWlanEnum$FastReauth;
    .local v64, "fastReauthval":Lcom/sec/epdg/DataType/IWlanEnum$FastReauth;
    :goto_d
    sget-object v7, Lcom/sec/epdg/DataType/IWlanEnum$DeviceIdentity;->DISABLED:Lcom/sec/epdg/DataType/IWlanEnum$DeviceIdentity;

    .line 521
    .local v7, "deviceIdentityval":Lcom/sec/epdg/DataType/IWlanEnum$DeviceIdentity;
    sget-object v31, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_DEVICE_IDENTITY:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 522
    move-object/from16 v36, v3

    .end local v3    # "fastReauthvalStr":Ljava/lang/String;
    .local v36, "fastReauthvalStr":Ljava/lang/String;
    invoke-virtual/range {v31 .. v31}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 521
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 523
    .local v3, "deviceIdentityvalStr":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 524
    sget-object v7, Lcom/sec/epdg/DataType/IWlanEnum$DeviceIdentity;->ENABLED:Lcom/sec/epdg/DataType/IWlanEnum$DeviceIdentity;

    move-object/from16 v65, v7

    goto :goto_e

    .line 525
    :cond_80
    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_81

    .line 526
    sget-object v7, Lcom/sec/epdg/DataType/IWlanEnum$DeviceIdentity;->DISABLED:Lcom/sec/epdg/DataType/IWlanEnum$DeviceIdentity;

    move-object/from16 v65, v7

    goto :goto_e

    .line 525
    :cond_81
    move-object/from16 v65, v7

    .line 528
    .end local v7    # "deviceIdentityval":Lcom/sec/epdg/DataType/IWlanEnum$DeviceIdentity;
    .local v65, "deviceIdentityval":Lcom/sec/epdg/DataType/IWlanEnum$DeviceIdentity;
    :goto_e
    const/4 v4, 0x0

    .line 529
    .local v4, "imeiVendorAt":Lcom/sec/epdg/DataType/IWlanEnum$Imei;
    sget-object v6, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IMEI:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 530
    invoke-virtual {v6}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 529
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 531
    .local v7, "imeiVendorAtStr":Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_82

    .line 532
    sget-object v4, Lcom/sec/epdg/DataType/IWlanEnum$Imei;->NONE:Lcom/sec/epdg/DataType/IWlanEnum$Imei;

    move-object/from16 v66, v4

    goto :goto_f

    .line 533
    :cond_82
    const-string v5, "DEVICEIMEI"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_83

    .line 534
    sget-object v4, Lcom/sec/epdg/DataType/IWlanEnum$Imei;->DEVICE_IMEI:Lcom/sec/epdg/DataType/IWlanEnum$Imei;

    move-object/from16 v66, v4

    goto :goto_f

    .line 533
    :cond_83
    move-object/from16 v66, v4

    .line 537
    .end local v4    # "imeiVendorAt":Lcom/sec/epdg/DataType/IWlanEnum$Imei;
    .local v66, "imeiVendorAt":Lcom/sec/epdg/DataType/IWlanEnum$Imei;
    :goto_f
    sget-object v4, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_MTU:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 538
    invoke-virtual {v4}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 537
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v67

    .line 539
    .local v67, "mtuStr":Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 541
    .local v4, "mtu":I
    if-nez v4, :cond_84

    .line 542
    iget-object v5, v0, Lcom/sec/epdg/EpdgContentReader;->TAG:Ljava/lang/String;

    const-string v6, "mtu from db is 0. read mtu from telephony db"

    invoke-static {v5, v6}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iget v5, v0, Lcom/sec/epdg/EpdgContentReader;->mPhoneId:I

    invoke-static {v5}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/sec/epdg/EpdgUtils;->findMtuFromTelephonyDB(Ljava/lang/String;)I

    move-result v4

    move/from16 v68, v4

    goto :goto_10

    .line 541
    :cond_84
    move/from16 v68, v4

    .line 546
    .end local v4    # "mtu":I
    .local v68, "mtu":I
    :goto_10
    sget-object v4, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_PERIODIC_DPD_TIMER:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 547
    invoke-virtual {v4}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 546
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v69

    .line 549
    .local v69, "strPeriodicDpdTimer":Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v70

    .local v70, "periodicDpdTimer":I
    move/from16 v31, v70

    .line 551
    iget-object v4, v0, Lcom/sec/epdg/EpdgContentReader;->TAG:Ljava/lang/String;

    const-string v5, "IWlanApnSetting make successfully"

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    move-object/from16 v81, v3

    move-object/from16 v71, v20

    move-object/from16 v72, v23

    move-object/from16 v73, v25

    move-object/from16 v74, v26

    move-object/from16 v75, v28

    move-object/from16 v76, v29

    move-object/from16 v77, v32

    move-object/from16 v78, v34

    move-object/from16 v79, v35

    move-object/from16 v80, v36

    .end local v3    # "deviceIdentityvalStr":Ljava/lang/String;
    .end local v20    # "ipsecintegrity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;>;"
    .end local v23    # "ipsecdhgroupStr":Ljava/lang/String;
    .end local v25    # "ipseclifetypeStr":Ljava/lang/String;
    .end local v26    # "ikeversionStr":Ljava/lang/String;
    .end local v28    # "ikeencryptionStr":Ljava/lang/String;
    .end local v29    # "ikeintegrityStr":Ljava/lang/String;
    .end local v32    # "eaptypeStr":Ljava/lang/String;
    .end local v34    # "pcscfVendorAtStr":Ljava/lang/String;
    .end local v35    # "mobikevalStr":Ljava/lang/String;
    .end local v36    # "fastReauthvalStr":Ljava/lang/String;
    .local v71, "ipsecintegrity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;>;"
    .local v72, "ipsecdhgroupStr":Ljava/lang/String;
    .local v73, "ipseclifetypeStr":Ljava/lang/String;
    .local v74, "ikeversionStr":Ljava/lang/String;
    .local v75, "ikeencryptionStr":Ljava/lang/String;
    .local v76, "ikeintegrityStr":Ljava/lang/String;
    .local v77, "eaptypeStr":Ljava/lang/String;
    .local v78, "pcscfVendorAtStr":Ljava/lang/String;
    .local v79, "mobikevalStr":Ljava/lang/String;
    .local v80, "fastReauthvalStr":Ljava/lang/String;
    .local v81, "deviceIdentityvalStr":Ljava/lang/String;
    move-object v3, v2

    move-object/from16 v4, v37

    move-object/from16 v82, v17

    move-object/from16 v83, v18

    move-object/from16 v84, v22

    move-object/from16 v85, v27

    move-object/from16 v86, v30

    .end local v17    # "ipsecencryptiontypeStr":Ljava/lang/String;
    .end local v18    # "ipsecintegrityStr":Ljava/lang/String;
    .end local v22    # "ipsecdhgroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;>;"
    .end local v27    # "ikeencryption":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;>;"
    .end local v30    # "ikedhgroupStr":Ljava/lang/String;
    .local v82, "ipsecencryptiontypeStr":Ljava/lang/String;
    .local v83, "ipsecintegrityStr":Ljava/lang/String;
    .local v84, "ipsecdhgroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;>;"
    .local v85, "ikeencryption":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;>;"
    .local v86, "ikedhgroupStr":Ljava/lang/String;
    move-object/from16 v5, v38

    move-object/from16 v6, v39

    move-object/from16 v89, v7

    move-object/from16 v87, v16

    move-object/from16 v88, v33

    .end local v7    # "imeiVendorAtStr":Ljava/lang/String;
    .end local v16    # "remoteuritypeStr":Ljava/lang/String;
    .end local v33    # "ikedhgroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;>;"
    .local v87, "remoteuritypeStr":Ljava/lang/String;
    .local v88, "ikedhgroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;>;"
    .local v89, "imeiVendorAtStr":Ljava/lang/String;
    move-object/from16 v7, v40

    move-object/from16 v92, v8

    move-object/from16 v90, v19

    move-object/from16 v91, v24

    .end local v8    # "ikeintegrity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;>;"
    .end local v19    # "ipsecencryptiontype":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;>;"
    .end local v24    # "ipsecdhgroupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v90, "ipsecencryptiontype":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;>;"
    .local v91, "ipsecdhgroupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v92, "ikeintegrity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;>;"
    move-object/from16 v8, v41

    move-object/from16 v94, v9

    move-object/from16 v93, v21

    .end local v9    # "ikedhgroupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21    # "tunnelmodeStr":Ljava/lang/String;
    .local v93, "tunnelmodeStr":Ljava/lang/String;
    .local v94, "ikedhgroupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v9, v42

    move-object/from16 v95, v10

    .end local v10    # "ipsecauthtypeStr":Ljava/lang/String;
    .local v95, "ipsecauthtypeStr":Ljava/lang/String;
    move-object/from16 v10, v43

    move-object/from16 v96, v11

    .end local v11    # "apnType":Ljava/lang/String;
    .local v96, "apnType":Ljava/lang/String;
    move-object/from16 v97, v12

    .end local v12    # "ownUriTypeStr":Ljava/lang/String;
    .local v97, "ownUriTypeStr":Ljava/lang/String;
    move-object/from16 v12, v44

    move-object/from16 v98, v13

    .end local v13    # "iptypeStr":Ljava/lang/String;
    .local v98, "iptypeStr":Ljava/lang/String;
    move-object/from16 v13, v45

    move-object/from16 v99, v14

    .end local v14    # "pfsvalStr":Ljava/lang/String;
    .local v99, "pfsvalStr":Ljava/lang/String;
    move-object/from16 v14, v46

    move-object/from16 v100, v15

    .end local v15    # "ipsecUserAuthvalStr":Ljava/lang/String;
    .local v100, "ipsecUserAuthvalStr":Ljava/lang/String;
    move-object/from16 v15, v90

    move-object/from16 v16, v71

    move-object/from16 v17, v84

    move-object/from16 v18, v47

    move/from16 v19, v49

    move-object/from16 v20, v50

    move-object/from16 v21, v85

    move-object/from16 v22, v92

    move-object/from16 v23, v88

    move/from16 v24, v52

    move/from16 v25, v54

    move/from16 v26, v56

    move/from16 v27, v58

    move-object/from16 v28, v59

    move/from16 v29, v61

    move-object/from16 v30, v62

    move-object/from16 v32, v63

    move-object/from16 v33, v66

    move-object/from16 v34, v64

    move-object/from16 v35, v65

    move/from16 v36, v68

    invoke-static/range {v3 .. v36}, Lcom/sec/epdg/IWlanApnSetting;->getIWlanApnSettingInstance(Ljava/lang/String;Lcom/sec/epdg/DataType/IWlanEnum$IPSecUserAuthState;Lcom/sec/epdg/DataType/IWlanEnum$PfsState;Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;Ljava/lang/String;Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;Ljava/lang/String;Ljava/lang/String;Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;Lcom/sec/epdg/DataType/IWlanEnum$TunnelModeType;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;ILcom/sec/epdg/DataType/IWlanEnum$Ikeversion;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IIIILcom/sec/epdg/DataType/IWlanEnum$IkeEapType;ILcom/sec/epdg/DataType/IWlanEnum$PcscfConf;ILcom/sec/epdg/DataType/IWlanEnum$Mobike;Lcom/sec/epdg/DataType/IWlanEnum$Imei;Lcom/sec/epdg/DataType/IWlanEnum$FastReauth;Lcom/sec/epdg/DataType/IWlanEnum$DeviceIdentity;I)Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public createIWlanApnList(Landroid/content/Context;)V
    .locals 13
    .param p1, "mContext"    # Landroid/content/Context;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 71
    .local v6, "cr":Landroid/content/ContentResolver;
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "iwlansettings"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 72
    const-string v1, "todos"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 74
    .local v7, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->values()[Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    move-result-object v0

    array-length v0, v0

    new-array v8, v0, [Ljava/lang/String;

    .line 75
    .local v8, "projection":[Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->values()[Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 76
    .local v3, "setting":Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;
    invoke-virtual {v3}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->ordinal()I

    move-result v4

    invoke-virtual {v3}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    .line 75
    .end local v3    # "setting":Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    :cond_0
    const/4 v9, 0x0

    .line 80
    .local v9, "useDummyDefault":Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 82
    .local v10, "iwlanApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    const-string v0, ""

    .line 83
    .local v0, "mnoName":Ljava/lang/String;
    iget v1, p0, Lcom/sec/epdg/EpdgContentReader;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getMnoName()Ljava/lang/String;

    move-result-object v11

    .line 84
    .end local v0    # "mnoName":Ljava/lang/String;
    .local v11, "mnoName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_MNO_NAME:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 85
    .local v12, "selection":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move-object v3, v12

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .local v0, "messagesCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 87
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgContentReader;->makeIwlanApn(Landroid/database/Cursor;)Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/sec/epdg/EpdgContentReader;->TAG:Ljava/lang/String;

    const-string v2, "iwlansettings - message cursor is null or entries returned <= 0"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    const/4 v1, 0x1

    move v9, v1

    .line 94
    :cond_2
    if-eqz v0, :cond_3

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 96
    .end local v0    # "messagesCursor":Landroid/database/Cursor;
    :cond_3
    goto :goto_3

    .line 85
    .restart local v0    # "messagesCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v6    # "cr":Landroid/content/ContentResolver;
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v8    # "projection":[Ljava/lang/String;
    .end local v9    # "useDummyDefault":Z
    .end local v10    # "iwlanApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    .end local v11    # "mnoName":Ljava/lang/String;
    .end local v12    # "selection":Ljava/lang/String;
    .end local p0    # "this":Lcom/sec/epdg/EpdgContentReader;
    .end local p1    # "mContext":Landroid/content/Context;
    :cond_4
    :goto_2
    throw v1
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    .line 94
    .end local v0    # "messagesCursor":Landroid/database/Cursor;
    .restart local v6    # "cr":Landroid/content/ContentResolver;
    .restart local v7    # "uri":Landroid/net/Uri;
    .restart local v8    # "projection":[Ljava/lang/String;
    .restart local v9    # "useDummyDefault":Z
    .restart local v10    # "iwlanApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    .restart local v11    # "mnoName":Ljava/lang/String;
    .restart local v12    # "selection":Ljava/lang/String;
    .restart local p0    # "this":Lcom/sec/epdg/EpdgContentReader;
    .restart local p1    # "mContext":Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/sec/epdg/EpdgContentReader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caught:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_3
    const/4 v0, 0x1

    if-ne v9, v0, :cond_9

    .line 99
    const-string v11, "default"

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_MNO_NAME:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 101
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move-object v3, v12

    :try_start_5
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1

    .line 102
    .local v0, "messagesCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_7

    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_7

    .line 103
    :goto_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 104
    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgContentReader;->makeIwlanApn(Landroid/database/Cursor;)Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    .line 110
    :cond_5
    if-eqz v0, :cond_6

    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1

    .line 112
    .end local v0    # "messagesCursor":Landroid/database/Cursor;
    :cond_6
    goto :goto_6

    .line 107
    .restart local v0    # "messagesCursor":Landroid/database/Cursor;
    :cond_7
    :try_start_8
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "iwlansettings - message cursor is null or entries returned <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "messagesCursor":Landroid/database/Cursor;
    .end local v6    # "cr":Landroid/content/ContentResolver;
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v8    # "projection":[Ljava/lang/String;
    .end local v9    # "useDummyDefault":Z
    .end local v10    # "iwlanApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    .end local v11    # "mnoName":Ljava/lang/String;
    .end local v12    # "selection":Ljava/lang/String;
    .end local p0    # "this":Lcom/sec/epdg/EpdgContentReader;
    .end local p1    # "mContext":Landroid/content/Context;
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 101
    .restart local v0    # "messagesCursor":Landroid/database/Cursor;
    .restart local v6    # "cr":Landroid/content/ContentResolver;
    .restart local v7    # "uri":Landroid/net/Uri;
    .restart local v8    # "projection":[Ljava/lang/String;
    .restart local v9    # "useDummyDefault":Z
    .restart local v10    # "iwlanApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    .restart local v11    # "mnoName":Ljava/lang/String;
    .restart local v12    # "selection":Ljava/lang/String;
    .restart local p0    # "this":Lcom/sec/epdg/EpdgContentReader;
    .restart local p1    # "mContext":Landroid/content/Context;
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_8

    :try_start_9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v2

    :try_start_a
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v6    # "cr":Landroid/content/ContentResolver;
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v8    # "projection":[Ljava/lang/String;
    .end local v9    # "useDummyDefault":Z
    .end local v10    # "iwlanApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    .end local v11    # "mnoName":Ljava/lang/String;
    .end local v12    # "selection":Ljava/lang/String;
    .end local p0    # "this":Lcom/sec/epdg/EpdgContentReader;
    .end local p1    # "mContext":Landroid/content/Context;
    :cond_8
    :goto_5
    throw v1
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_1

    .line 110
    .end local v0    # "messagesCursor":Landroid/database/Cursor;
    .restart local v6    # "cr":Landroid/content/ContentResolver;
    .restart local v7    # "uri":Landroid/net/Uri;
    .restart local v8    # "projection":[Ljava/lang/String;
    .restart local v9    # "useDummyDefault":Z
    .restart local v10    # "iwlanApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    .restart local v11    # "mnoName":Ljava/lang/String;
    .restart local v12    # "selection":Ljava/lang/String;
    .restart local p0    # "this":Lcom/sec/epdg/EpdgContentReader;
    .restart local p1    # "mContext":Landroid/content/Context;
    :catch_1
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/sec/epdg/EpdgContentReader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caught:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_9
    :goto_6
    iget-object v0, p0, Lcom/sec/epdg/EpdgContentReader;->mIWlanApns:Ljava/util/ArrayList;

    monitor-enter v0

    .line 116
    :try_start_b
    iget-object v1, p0, Lcom/sec/epdg/EpdgContentReader;->mIWlanApns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 117
    iget-object v1, p0, Lcom/sec/epdg/EpdgContentReader;->mIWlanApns:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 118
    monitor-exit v0

    .line 119
    return-void

    .line 118
    :catchall_4
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v1
.end method

.method public getApnList()[Ljava/lang/String;
    .locals 5

    .line 567
    iget-object v0, p0, Lcom/sec/epdg/EpdgContentReader;->mIWlanApns:Ljava/util/ArrayList;

    monitor-enter v0

    .line 568
    :try_start_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgContentReader;->mIWlanApns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 569
    .local v1, "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 570
    .local v2, "updateApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 571
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/epdg/IWlanApnSetting;

    .line 572
    .local v3, "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    invoke-virtual {v3}, Lcom/sec/epdg/IWlanApnSetting;->getmApnType()Ljava/lang/String;

    move-result-object v4

    .line 573
    .local v4, "apn":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 574
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    .end local v3    # "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    .end local v4    # "apn":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 577
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    monitor-exit v0

    return-object v3

    .line 578
    .end local v1    # "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    .end local v2    # "updateApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized getEpdgSettings()Lcom/sec/epdg/EpdgSettings;
    .locals 1

    monitor-enter p0

    .line 1050
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgContentReader;->mEpdgSettings:Lcom/sec/epdg/EpdgSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1050
    .end local p0    # "this":Lcom/sec/epdg/EpdgContentReader;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIWlanApnList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/epdg/IWlanApnSetting;",
            ">;"
        }
    .end annotation

    .line 563
    iget-object v0, p0, Lcom/sec/epdg/EpdgContentReader;->mIWlanApns:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIWlanApnSettingByApnType(Ljava/lang/String;)Lcom/sec/epdg/IWlanApnSetting;
    .locals 5
    .param p1, "apnType"    # Ljava/lang/String;

    .line 582
    iget-object v0, p0, Lcom/sec/epdg/EpdgContentReader;->mIWlanApns:Ljava/util/ArrayList;

    monitor-enter v0

    .line 583
    :try_start_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgContentReader;->mIWlanApns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 584
    .local v1, "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 585
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/epdg/IWlanApnSetting;

    .line 586
    .local v2, "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    invoke-virtual {v2}, Lcom/sec/epdg/IWlanApnSetting;->getmApnType()Ljava/lang/String;

    move-result-object v3

    .line 587
    .local v3, "apnTypeDest":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 588
    monitor-exit v0

    return-object v2

    .line 590
    .end local v2    # "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    .end local v3    # "apnTypeDest":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 591
    .end local v1    # "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    :cond_1
    monitor-exit v0

    .line 592
    const/4 v0, 0x0

    return-object v0

    .line 591
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIWlanApnSettingByApnTypeRemoteUri(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/epdg/IWlanApnSetting;
    .locals 7
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "remoteUri"    # Ljava/lang/String;

    .line 610
    iget-object v0, p0, Lcom/sec/epdg/EpdgContentReader;->mIWlanApns:Ljava/util/ArrayList;

    monitor-enter v0

    .line 611
    :try_start_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgContentReader;->mIWlanApns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 612
    .local v1, "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 613
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/epdg/IWlanApnSetting;

    .line 614
    .local v2, "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    invoke-virtual {v2}, Lcom/sec/epdg/IWlanApnSetting;->getmApnType()Ljava/lang/String;

    move-result-object v3

    .line 615
    .local v3, "apnTypeDest":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecRemoteUri()Ljava/lang/String;

    move-result-object v4

    .line 616
    .local v4, "remoteUriDest":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    .line 617
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 618
    monitor-exit v0

    return-object v2

    .line 620
    .end local v2    # "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    .end local v3    # "apnTypeDest":Ljava/lang/String;
    .end local v4    # "remoteUriDest":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 621
    .end local v1    # "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    :cond_1
    monitor-exit v0

    .line 622
    const/4 v0, 0x0

    return-object v0

    .line 621
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIWlanApnSettingByRemoteUri(Ljava/lang/String;)Lcom/sec/epdg/IWlanApnSetting;
    .locals 6
    .param p1, "remoteUri"    # Ljava/lang/String;

    .line 596
    iget-object v0, p0, Lcom/sec/epdg/EpdgContentReader;->mIWlanApns:Ljava/util/ArrayList;

    monitor-enter v0

    .line 597
    :try_start_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgContentReader;->mIWlanApns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 598
    .local v1, "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 599
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/epdg/IWlanApnSetting;

    .line 600
    .local v2, "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    invoke-virtual {v2}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecRemoteUri()Ljava/lang/String;

    move-result-object v3

    .line 601
    .local v3, "remoteUriDest":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 602
    monitor-exit v0

    return-object v2

    .line 604
    .end local v2    # "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    .end local v3    # "remoteUriDest":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 605
    .end local v1    # "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    :cond_1
    monitor-exit v0

    .line 606
    const/4 v0, 0x0

    return-object v0

    .line 605
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized readEpdgSettings(Landroid/content/Context;)V
    .locals 12
    .param p1, "mContext"    # Landroid/content/Context;

    monitor-enter p0

    .line 627
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 628
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "content"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "iwlansettings"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "todos"

    .line 629
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "epdgsettings"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 631
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->values()[Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    move-object v9, v2

    .line 632
    .local v9, "projection":[Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->values()[Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 633
    .local v5, "setting":Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;
    invoke-virtual {v5}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->ordinal()I

    move-result v6

    invoke-virtual {v5}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v6

    .line 632
    .end local v5    # "setting":Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 636
    .end local p0    # "this":Lcom/sec/epdg/EpdgContentReader;
    :cond_0
    const-string v2, ""

    .line 637
    .local v2, "mnoName":Ljava/lang/String;
    iget v3, p0, Lcom/sec/epdg/EpdgContentReader;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->getMnoName()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    .line 639
    .end local v2    # "mnoName":Ljava/lang/String;
    .local v6, "mnoName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_MNO_NAME:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    invoke-virtual {v3}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 641
    .local v2, "messagesCursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 644
    .local v3, "useDummyDefault":Z
    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 645
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 646
    invoke-direct {p0, v2, p1}, Lcom/sec/epdg/EpdgContentReader;->addEpdgSetting(Landroid/database/Cursor;Landroid/content/Context;)V

    goto :goto_1

    .line 649
    :cond_1
    iget-object v4, p0, Lcom/sec/epdg/EpdgContentReader;->TAG:Ljava/lang/String;

    const-string v5, "EpdgSettings - message cursor is null or entries returned <= 0"

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 650
    const/4 v3, 0x1

    .line 656
    :cond_2
    if-eqz v2, :cond_3

    .line 657
    :goto_2
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 658
    const/4 v2, 0x0

    move v10, v3

    goto :goto_3

    .line 656
    :cond_3
    move v10, v3

    goto :goto_3

    :catchall_0
    move-exception v4

    goto/16 :goto_8

    .line 652
    :catch_0
    move-exception v4

    .line 653
    .local v4, "e":Ljava/lang/RuntimeException;
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 654
    iget-object v5, p0, Lcom/sec/epdg/EpdgContentReader;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "caught:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 656
    .end local v4    # "e":Ljava/lang/RuntimeException;
    if-eqz v2, :cond_3

    .line 657
    goto :goto_2

    .line 662
    .end local v3    # "useDummyDefault":Z
    .local v10, "useDummyDefault":Z
    :goto_3
    const/4 v3, 0x1

    if-ne v10, v3, :cond_8

    .line 663
    :try_start_4
    const-string v3, "default"

    move-object v11, v3

    .line 664
    .end local v6    # "mnoName":Ljava/lang/String;
    .local v11, "mnoName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->COLUMN_MNO_NAME:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$EpdgSettings;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, v1

    move-object v5, v9

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object v2, v3

    .line 667
    if-eqz v2, :cond_5

    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_5

    .line 668
    :goto_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 669
    invoke-direct {p0, v2, p1}, Lcom/sec/epdg/EpdgContentReader;->addEpdgSetting(Landroid/database/Cursor;Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    .line 679
    :cond_4
    if-eqz v2, :cond_6

    .line 680
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 681
    const/4 v2, 0x0

    move-object v6, v11

    goto :goto_7

    .line 679
    :catchall_1
    move-exception v3

    goto :goto_6

    .line 675
    :catch_1
    move-exception v3

    goto :goto_5

    .line 672
    :cond_5
    :try_start_7
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "EpdgSettings - message cursor is null or entries returned <= 0"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "messagesCursor":Landroid/database/Cursor;
    .end local v9    # "projection":[Ljava/lang/String;
    .end local v10    # "useDummyDefault":Z
    .end local v11    # "mnoName":Ljava/lang/String;
    .end local p1    # "mContext":Landroid/content/Context;
    throw v3
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 679
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v2    # "messagesCursor":Landroid/database/Cursor;
    .restart local v9    # "projection":[Ljava/lang/String;
    .restart local v10    # "useDummyDefault":Z
    .restart local v11    # "mnoName":Ljava/lang/String;
    .restart local p0    # "this":Lcom/sec/epdg/EpdgContentReader;
    .restart local p1    # "mContext":Landroid/content/Context;
    :catchall_2
    move-exception v3

    goto :goto_6

    .line 675
    :catch_2
    move-exception v3

    .line 676
    .local v3, "e":Ljava/lang/RuntimeException;
    :goto_5
    :try_start_8
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 677
    iget-object v4, p0, Lcom/sec/epdg/EpdgContentReader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "caught:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 679
    .end local v3    # "e":Ljava/lang/RuntimeException;
    if-eqz v2, :cond_6

    .line 680
    :try_start_9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 681
    const/4 v2, 0x0

    move-object v6, v11

    goto :goto_7

    .line 685
    .end local p0    # "this":Lcom/sec/epdg/EpdgContentReader;
    :cond_6
    move-object v6, v11

    goto :goto_7

    .line 679
    :goto_6
    if-eqz v2, :cond_7

    .line 680
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 681
    const/4 v2, 0x0

    .line 683
    :cond_7
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 685
    .end local v11    # "mnoName":Ljava/lang/String;
    .restart local v6    # "mnoName":Ljava/lang/String;
    :cond_8
    :goto_7
    monitor-exit p0

    return-void

    .line 656
    .end local v10    # "useDummyDefault":Z
    .local v3, "useDummyDefault":Z
    .restart local p0    # "this":Lcom/sec/epdg/EpdgContentReader;
    :catchall_3
    move-exception v4

    :goto_8
    if-eqz v2, :cond_9

    .line 657
    :try_start_a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 658
    const/4 v2, 0x0

    .line 660
    .end local p0    # "this":Lcom/sec/epdg/EpdgContentReader;
    :cond_9
    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 626
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "messagesCursor":Landroid/database/Cursor;
    .end local v3    # "useDummyDefault":Z
    .end local v6    # "mnoName":Ljava/lang/String;
    .end local v9    # "projection":[Ljava/lang/String;
    .end local p1    # "mContext":Landroid/content/Context;
    :catchall_4
    move-exception p1

    monitor-exit p0

    throw p1
.end method
