.class public Lcom/sec/epdg/BigData/EpdgBigDataParams;
.super Ljava/lang/Object;
.source "EpdgBigDataParams.java"


# static fields
.field private static mBatteryChargeType:I

.field private static mBatteryStatus:I

.field private static mBatteryVoltage:I


# instance fields
.field private mCurrentRtpLossRate:I

.field private mHandoverTriggerReasonForEPDI:I

.field private mLastestIkeError:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const/4 v0, 0x1

    sput v0, Lcom/sec/epdg/BigData/EpdgBigDataParams;->mBatteryStatus:I

    .line 11
    const/4 v0, 0x0

    sput v0, Lcom/sec/epdg/BigData/EpdgBigDataParams;->mBatteryChargeType:I

    .line 12
    sput v0, Lcom/sec/epdg/BigData/EpdgBigDataParams;->mBatteryVoltage:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataParams;->mCurrentRtpLossRate:I

    .line 7
    iput v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataParams;->mHandoverTriggerReasonForEPDI:I

    .line 8
    iput v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataParams;->mLastestIkeError:I

    return-void
.end method

.method public static getBatteryChargeType()I
    .locals 1

    .line 23
    sget v0, Lcom/sec/epdg/BigData/EpdgBigDataParams;->mBatteryChargeType:I

    return v0
.end method

.method public static getBatteryStatus()I
    .locals 1

    .line 15
    sget v0, Lcom/sec/epdg/BigData/EpdgBigDataParams;->mBatteryStatus:I

    return v0
.end method

.method public static getBatteryVoltage()I
    .locals 1

    .line 31
    sget v0, Lcom/sec/epdg/BigData/EpdgBigDataParams;->mBatteryVoltage:I

    return v0
.end method

.method public static setBatteryStatus(I)V
    .locals 0
    .param p0, "batteryStatus"    # I

    .line 19
    sput p0, Lcom/sec/epdg/BigData/EpdgBigDataParams;->mBatteryStatus:I

    .line 20
    return-void
.end method

.method public static setBatteryVoltage(I)V
    .locals 0
    .param p0, "batteryVoltage"    # I

    .line 35
    sput p0, Lcom/sec/epdg/BigData/EpdgBigDataParams;->mBatteryVoltage:I

    .line 36
    return-void
.end method

.method public static setBetteryChargeType(I)V
    .locals 0
    .param p0, "batteryChargeType"    # I

    .line 27
    sput p0, Lcom/sec/epdg/BigData/EpdgBigDataParams;->mBatteryChargeType:I

    .line 28
    return-void
.end method


# virtual methods
.method public getCurrentRtpLossRate()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataParams;->mCurrentRtpLossRate:I

    return v0
.end method

.method public getHandoverTriggerReasonForEPDI()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataParams;->mHandoverTriggerReasonForEPDI:I

    return v0
.end method

.method public getLastestIkeError()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataParams;->mLastestIkeError:I

    return v0
.end method

.method public setCurrentRtpLossRate(I)V
    .locals 0
    .param p1, "currentRtpLossRate"    # I

    .line 45
    iput p1, p0, Lcom/sec/epdg/BigData/EpdgBigDataParams;->mCurrentRtpLossRate:I

    .line 46
    return-void
.end method

.method public setHandoverTriggerReasonForEPDI(I)V
    .locals 0
    .param p1, "handoverReasonForEPDI"    # I

    .line 55
    iput p1, p0, Lcom/sec/epdg/BigData/EpdgBigDataParams;->mHandoverTriggerReasonForEPDI:I

    .line 56
    return-void
.end method

.method public setLastestIkeError(I)V
    .locals 0
    .param p1, "lastestIkeError"    # I

    .line 65
    iput p1, p0, Lcom/sec/epdg/BigData/EpdgBigDataParams;->mLastestIkeError:I

    .line 66
    return-void
.end method
