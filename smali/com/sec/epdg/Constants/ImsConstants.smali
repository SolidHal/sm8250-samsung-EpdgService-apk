.class public Lcom/sec/epdg/Constants/ImsConstants;
.super Ljava/lang/Object;
.source "ImsConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/Constants/ImsConstants$IMSRtpLossRateChange;,
        Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;,
        Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;
    }
.end annotation


# static fields
.field private static final BLOCK_HANDOFF:Ljava/lang/String; = "blockhandoff"

.field private static final E911_CALL:Ljava/lang/String; = "e911call"

.field private static final IMS_CALL_STARTING:Ljava/lang/String; = "imscallstarting"

.field private static final IMS_VIDEO_CALL:Ljava/lang/String; = "imsvideocall"

.field private static final IMS_VIDEO_VOICE_CALL:Ljava/lang/String; = "imsvideovoicecall"

.field private static final IMS_VOICE_CALL:Ljava/lang/String; = "imsvoicecall"

.field public static final MAX_DEVIATION_RTPLOSSRATE_LEVEL:I = 0xa

.field private static final NO_APPICATION_SERVICE:Ljava/lang/String; = "idle"

.field public static final RTP_LOSS_RATE_LEVEL_0:I = 0x0

.field public static final RTP_LOSS_RATE_LEVEL_1:I = 0x1

.field public static final RTP_LOSS_RATE_LEVEL_2:I = 0x2

.field public static final RTP_LOSS_RATE_LEVEL_3:I = 0x3

.field public static final RTP_LOSS_RATE_LEVEL_4:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
