.class Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;
.super Ljava/lang/Object;
.source "EpdgBigDataController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/BigData/EpdgBigDataController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgBigDataDailyReportHeader"
.end annotation


# static fields
.field private static final FEATURE_DRPT:Ljava/lang/String; = "DRPT"

.field private static final OVERWRITE_MODE_REPLACE:I = 0x0

.field private static final PRAMETER_ACLW:Ljava/lang/String; = "ACLW"

.field private static final PRAMETER_ACWL:Ljava/lang/String; = "ACWL"

.field private static final PRAMETER_ADL1:Ljava/lang/String; = "ADL1"

.field private static final PRAMETER_ADL2:Ljava/lang/String; = "ADL2"

.field private static final PRAMETER_ADL3:Ljava/lang/String; = "ADL3"

.field private static final PRAMETER_ADL4:Ljava/lang/String; = "ADL4"

.field private static final PRAMETER_ADLA:Ljava/lang/String; = "ADLA"

.field private static final PRAMETER_DNRC:Ljava/lang/String; = "DNRC"

.field private static final PRAMETER_DYRC:Ljava/lang/String; = "DYRC"

.field private static final PRAMETER_FEATURE:Ljava/lang/String; = "feature"

.field private static final PRAMETER_LHFC:Ljava/lang/String; = "LHFC"

.field private static final PRAMETER_LHOC:Ljava/lang/String; = "LHOC"

.field private static final PRAMETER_LHRL:Ljava/lang/String; = "LHRL"

.field private static final PRAMETER_LHWS:Ljava/lang/String; = "LHWS"

.field private static final PRAMETER_MODE:Ljava/lang/String; = "overwrite_mode"

.field private static final PRAMETER_RLRC:Ljava/lang/String; = "RLRC"

.field private static final PRAMETER_SENDMODE:Ljava/lang/String; = "send_mode"

.field private static final PRAMETER_VCAT:Ljava/lang/String; = "VCAT"

.field private static final PRAMETER_VCDC:Ljava/lang/String; = "VCDC"

.field private static final PRAMETER_WHFC:Ljava/lang/String; = "WHFC"

.field private static final PRAMETER_WHOC:Ljava/lang/String; = "WHOC"

.field private static final SEND_MODE_PENDING:I = 0x1


# instance fields
.field mAllCallCountL2WHandover:Ljava/lang/String;

.field mAllCallCountW2LHandover:Ljava/lang/String;

.field mAllCountDpdResponse:Ljava/lang/String;

.field mAllCountNoDpdResponse:Ljava/lang/String;

.field mAllCountRtpLossRate:Ljava/lang/String;

.field mAllCountW2LHandoverByHighRtpLoss:Ljava/lang/String;

.field mAllCountW2LHandoverByWeakWifiSignal:Ljava/lang/String;

.field mAllDropCallCountByDereg:Ljava/lang/String;

.field mAverageOfDpdLatencyLevel1:Ljava/lang/String;

.field mAverageOfDpdLatencyLevel2:Ljava/lang/String;

.field mAverageOfDpdLatencyLevel3:Ljava/lang/String;

.field mAverageOfDpdLatencyLevel4:Ljava/lang/String;

.field mAverageOfDpdLatencyLevelAll:Ljava/lang/String;

.field mL2WHandoverFailCount:Ljava/lang/String;

.field mL2WHandoverOkCount:Ljava/lang/String;

.field mVowifiCallTime:Ljava/lang/String;

.field mW2LHandoverFailCount:Ljava/lang/String;

.field mW2LHandoverOkCount:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/epdg/BigData/EpdgBigDataController;


# direct methods
.method constructor <init>(Lcom/sec/epdg/BigData/EpdgBigDataController;)V
    .locals 3

    .line 701
    iput-object p1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->this$0:Lcom/sec/epdg/BigData/EpdgBigDataController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 702
    invoke-static {p1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->access$300(Lcom/sec/epdg/BigData/EpdgBigDataController;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "epdg_bigdata_preference"

    const-string v2, "SHAREDPREF_ALL_CALL_COUNT_L2W_HANDOVER"

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->access$400(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->mAllCallCountL2WHandover:Ljava/lang/String;

    .line 704
    invoke-static {p1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->access$300(Lcom/sec/epdg/BigData/EpdgBigDataController;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "SHAREDPREF_ALL_CALL_COUNT_W2L_HANDOVER"

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->access$400(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->mAllCallCountW2LHandover:Ljava/lang/String;

    .line 706
    invoke-static {p1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->access$300(Lcom/sec/epdg/BigData/EpdgBigDataController;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "VOWIFI_CALL_ALL_TIME"

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->access$400(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->mVowifiCallTime:Ljava/lang/String;

    .line 708
    invoke-static {p1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->access$300(Lcom/sec/epdg/BigData/EpdgBigDataController;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "L2W_HANDOVER_OK_COUNT"

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->access$400(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->mL2WHandoverOkCount:Ljava/lang/String;

    .line 710
    invoke-static {p1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->access$300(Lcom/sec/epdg/BigData/EpdgBigDataController;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "L2W_HANDOVER_FAIL_COUNT"

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->access$400(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->mL2WHandoverFailCount:Ljava/lang/String;

    .line 712
    invoke-static {p1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->access$300(Lcom/sec/epdg/BigData/EpdgBigDataController;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "W2L_HANDOVER_OK_COUNT"

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->access$400(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->mW2LHandoverOkCount:Ljava/lang/String;

    .line 714
    invoke-static {p1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->access$300(Lcom/sec/epdg/BigData/EpdgBigDataController;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "W2L_HANDOVER_FAIL_COUNT"

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->access$400(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->mW2LHandoverFailCount:Ljava/lang/String;

    .line 716
    invoke-static {p1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->access$300(Lcom/sec/epdg/BigData/EpdgBigDataController;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "ALL_CALL_COUNT_DROP_BY_DEREG"

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->access$400(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->mAllDropCallCountByDereg:Ljava/lang/String;

    .line 718
    invoke-static {p1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->access$300(Lcom/sec/epdg/BigData/EpdgBigDataController;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "W2L_HO_BY_WEAK_SIGNAL"

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->access$400(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->mAllCountW2LHandoverByWeakWifiSignal:Ljava/lang/String;

    .line 720
    invoke-static {p1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->access$300(Lcom/sec/epdg/BigData/EpdgBigDataController;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "W2L_HO_BY_RTP_LOSS"

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->access$400(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->mAllCountW2LHandoverByHighRtpLoss:Ljava/lang/String;

    .line 722
    invoke-static {p1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->access$300(Lcom/sec/epdg/BigData/EpdgBigDataController;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "RTP_LOSS_RATE_COUNT"

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->access$400(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->mAllCountRtpLossRate:Ljava/lang/String;

    .line 724
    invoke-static {p1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->access$300(Lcom/sec/epdg/BigData/EpdgBigDataController;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "DPD_RESPONSE_COUNT"

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->access$400(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->mAllCountDpdResponse:Ljava/lang/String;

    .line 726
    invoke-static {p1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->access$300(Lcom/sec/epdg/BigData/EpdgBigDataController;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "DPD_NO_RESPONSE_COUNT"

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->access$400(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->mAllCountNoDpdResponse:Ljava/lang/String;

    .line 728
    invoke-static {p1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->access$300(Lcom/sec/epdg/BigData/EpdgBigDataController;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "AVERAGE_DPD_LATENCY_LEVEL_ALL"

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->access$400(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->mAverageOfDpdLatencyLevelAll:Ljava/lang/String;

    .line 730
    invoke-static {p1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->access$300(Lcom/sec/epdg/BigData/EpdgBigDataController;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "AVERAGE_DPD_LATENCY_LEVEL_1"

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->access$400(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->mAverageOfDpdLatencyLevel1:Ljava/lang/String;

    .line 732
    invoke-static {p1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->access$300(Lcom/sec/epdg/BigData/EpdgBigDataController;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "AVERAGE_DPD_LATENCY_LEVEL_2"

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->access$400(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->mAverageOfDpdLatencyLevel2:Ljava/lang/String;

    .line 734
    invoke-static {p1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->access$300(Lcom/sec/epdg/BigData/EpdgBigDataController;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "AVERAGE_DPD_LATENCY_LEVEL_3"

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->access$400(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->mAverageOfDpdLatencyLevel3:Ljava/lang/String;

    .line 736
    invoke-static {p1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->access$300(Lcom/sec/epdg/BigData/EpdgBigDataController;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "AVERAGE_DPD_LATENCY_LEVEL_4"

    invoke-static {p1, v1, v0}, Lcom/sec/epdg/BigData/EpdgBigDataController;->access$400(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->mAverageOfDpdLatencyLevel4:Ljava/lang/String;

    .line 738
    return-void
.end method


# virtual methods
.method public getAllCallCountL2WHandover()Ljava/lang/String;
    .locals 1

    .line 741
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->mAllCallCountL2WHandover:Ljava/lang/String;

    return-object v0
.end method

.method public getAllCallCountW2LHandover()Ljava/lang/String;
    .locals 1

    .line 745
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->mAllCallCountW2LHandover:Ljava/lang/String;

    return-object v0
.end method

.method public getAllCountDpdResponse()Ljava/lang/String;
    .locals 1

    .line 785
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->mAllCountDpdResponse:Ljava/lang/String;

    return-object v0
.end method

.method public getAllCountNoDpdResponse()Ljava/lang/String;
    .locals 1

    .line 789
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->mAllCountNoDpdResponse:Ljava/lang/String;

    return-object v0
.end method

.method public getAllCountRtpLossRate()Ljava/lang/String;
    .locals 1

    .line 781
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->mAllCountRtpLossRate:Ljava/lang/String;

    return-object v0
.end method

.method public getAllCountW2LHandoverByHighRtpLoss()Ljava/lang/String;
    .locals 1

    .line 777
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->mAllCountW2LHandoverByHighRtpLoss:Ljava/lang/String;

    return-object v0
.end method

.method public getAllCountW2LHandoverByWeakWifiSignal()Ljava/lang/String;
    .locals 1

    .line 773
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->mAllCountW2LHandoverByWeakWifiSignal:Ljava/lang/String;

    return-object v0
.end method

.method public getAllDropCallCountByDereg()Ljava/lang/String;
    .locals 1

    .line 769
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->mAllDropCallCountByDereg:Ljava/lang/String;

    return-object v0
.end method

.method public getAverageOfDpdLatencyLevel1()Ljava/lang/String;
    .locals 1

    .line 797
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->mAverageOfDpdLatencyLevel1:Ljava/lang/String;

    return-object v0
.end method

.method public getAverageOfDpdLatencyLevel2()Ljava/lang/String;
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->mAverageOfDpdLatencyLevel2:Ljava/lang/String;

    return-object v0
.end method

.method public getAverageOfDpdLatencyLevel3()Ljava/lang/String;
    .locals 1

    .line 805
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->mAverageOfDpdLatencyLevel3:Ljava/lang/String;

    return-object v0
.end method

.method public getAverageOfDpdLatencyLevel4()Ljava/lang/String;
    .locals 1

    .line 809
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->mAverageOfDpdLatencyLevel4:Ljava/lang/String;

    return-object v0
.end method

.method public getAverageOfDpdLatencyLevelAll()Ljava/lang/String;
    .locals 1

    .line 793
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->mAverageOfDpdLatencyLevelAll:Ljava/lang/String;

    return-object v0
.end method

.method public getL2WHandoverFailCount()Ljava/lang/String;
    .locals 1

    .line 757
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->mL2WHandoverFailCount:Ljava/lang/String;

    return-object v0
.end method

.method public getL2WHandoverOkCount()Ljava/lang/String;
    .locals 1

    .line 753
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->mL2WHandoverOkCount:Ljava/lang/String;

    return-object v0
.end method

.method public getVowifiCallTime()Ljava/lang/String;
    .locals 1

    .line 749
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->mVowifiCallTime:Ljava/lang/String;

    return-object v0
.end method

.method public getW2LHandoverFailCount()Ljava/lang/String;
    .locals 1

    .line 765
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->mW2LHandoverFailCount:Ljava/lang/String;

    return-object v0
.end method

.method public getW2LHandoverOkCount()Ljava/lang/String;
    .locals 1

    .line 761
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->mW2LHandoverOkCount:Ljava/lang/String;

    return-object v0
.end method
