.class public Lcom/sec/epdg/Constants/BigDataConstants;
.super Ljava/lang/Object;
.source "BigDataConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/Constants/BigDataConstants$EpdgBigDataEvents;,
        Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;,
        Lcom/sec/epdg/Constants/BigDataConstants$DnsQueryResult;,
        Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;,
        Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;,
        Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;,
        Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;,
        Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;,
        Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDropType;,
        Lcom/sec/epdg/Constants/BigDataConstants$VoWifiRoamingStatus;,
        Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;,
        Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallHandoverType;
    }
.end annotation


# static fields
.field public static final SHAREDPREF_ALL_CALL_COUNT_DROP_BY_DEREG:Ljava/lang/String; = "ALL_CALL_COUNT_DROP_BY_DEREG"

.field public static final SHAREDPREF_ALL_CALL_COUNT_L2W_HANDOVER:Ljava/lang/String; = "SHAREDPREF_ALL_CALL_COUNT_L2W_HANDOVER"

.field public static final SHAREDPREF_ALL_CALL_COUNT_W2L_HANDOVER:Ljava/lang/String; = "SHAREDPREF_ALL_CALL_COUNT_W2L_HANDOVER"

.field public static final SHAREDPREF_AVERAGE_DPD_LATENCY_LEVEL_1:Ljava/lang/String; = "AVERAGE_DPD_LATENCY_LEVEL_1"

.field public static final SHAREDPREF_AVERAGE_DPD_LATENCY_LEVEL_2:Ljava/lang/String; = "AVERAGE_DPD_LATENCY_LEVEL_2"

.field public static final SHAREDPREF_AVERAGE_DPD_LATENCY_LEVEL_3:Ljava/lang/String; = "AVERAGE_DPD_LATENCY_LEVEL_3"

.field public static final SHAREDPREF_AVERAGE_DPD_LATENCY_LEVEL_4:Ljava/lang/String; = "AVERAGE_DPD_LATENCY_LEVEL_4"

.field public static final SHAREDPREF_AVERAGE_DPD_LATENCY_LEVEL_ALL:Ljava/lang/String; = "AVERAGE_DPD_LATENCY_LEVEL_ALL"

.field public static final SHAREDPREF_COUNT_DPD_LATENCY_LEVEL_1:Ljava/lang/String; = "COUNT_DPD_LATENCY_LEVEL_1"

.field public static final SHAREDPREF_COUNT_DPD_LATENCY_LEVEL_2:Ljava/lang/String; = "COUNT_DPD_LATENCY_LEVEL_2"

.field public static final SHAREDPREF_COUNT_DPD_LATENCY_LEVEL_3:Ljava/lang/String; = "COUNT_DPD_LATENCY_LEVEL_3"

.field public static final SHAREDPREF_COUNT_DPD_LATENCY_LEVEL_4:Ljava/lang/String; = "COUNT_DPD_LATENCY_LEVEL_4"

.field public static final SHAREDPREF_COUNT_DPD_LATENCY_LEVEL_ALL:Ljava/lang/String; = "COUNT_DPD_LATENCY_LEVEL_ALL"

.field public static final SHAREDPREF_DPD_NO_RESPONSE_COUNT:Ljava/lang/String; = "DPD_NO_RESPONSE_COUNT"

.field public static final SHAREDPREF_DPD_RESPONSE_COUNT:Ljava/lang/String; = "DPD_RESPONSE_COUNT"

.field public static final SHAREDPREF_FILE:Ljava/lang/String; = "epdg_bigdata_preference"

.field public static final SHAREDPREF_L2W_HANDOVER_FAIL_COUNT:Ljava/lang/String; = "L2W_HANDOVER_FAIL_COUNT"

.field public static final SHAREDPREF_L2W_HANDOVER_OK_COUNT:Ljava/lang/String; = "L2W_HANDOVER_OK_COUNT"

.field public static final SHAREDPREF_RTP_LOSS_RATE_COUNT:Ljava/lang/String; = "RTP_LOSS_RATE_COUNT"

.field public static final SHAREDPREF_TIME_DPD_LATENCY_LEVEL_1:Ljava/lang/String; = "TIME_DPD_LATENCY_LEVEL_1"

.field public static final SHAREDPREF_TIME_DPD_LATENCY_LEVEL_2:Ljava/lang/String; = "TIME_DPD_LATENCY_LEVEL_2"

.field public static final SHAREDPREF_TIME_DPD_LATENCY_LEVEL_3:Ljava/lang/String; = "TIME_DPD_LATENCY_LEVEL_3"

.field public static final SHAREDPREF_TIME_DPD_LATENCY_LEVEL_4:Ljava/lang/String; = "TIME_DPD_LATENCY_LEVEL_4"

.field public static final SHAREDPREF_TIME_DPD_LATENCY_LEVEL_ALL:Ljava/lang/String; = "TIME_DPD_LATENCY_LEVEL_ALL"

.field public static final SHAREDPREF_VOWIFI_CALL_ALL_TIME:Ljava/lang/String; = "VOWIFI_CALL_ALL_TIME"

.field public static final SHAREDPREF_W2L_HANDOVER_FAIL_COUNT:Ljava/lang/String; = "W2L_HANDOVER_FAIL_COUNT"

.field public static final SHAREDPREF_W2L_HANDOVER_OK_COUNT:Ljava/lang/String; = "W2L_HANDOVER_OK_COUNT"

.field public static final SHAREDPREF_W2L_HO_BY_RTP_LOSS:Ljava/lang/String; = "W2L_HO_BY_RTP_LOSS"

.field public static final SHAREDPREF_W2L_HO_BY_WEAK_SIGNAL:Ljava/lang/String; = "W2L_HO_BY_WEAK_SIGNAL"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
