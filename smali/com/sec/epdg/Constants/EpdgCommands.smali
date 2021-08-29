.class public Lcom/sec/epdg/Constants/EpdgCommands;
.super Ljava/lang/Object;
.source "EpdgCommands.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/Constants/EpdgCommands$EpdgRxEvents;,
        Lcom/sec/epdg/Constants/EpdgCommands$EpdgTxEvents;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[EPDGCommands]"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static postDeregister(Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 2
    .param p0, "hdr"    # Landroid/os/Handler;
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "force"    # I

    .line 59
    const/16 v0, 0x47

    const/4 v1, 0x0

    invoke-static {p0, v0, p2, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 63
    return-void
.end method

.method public static postDnsRetryRequest(Landroid/os/Handler;ILjava/lang/Boolean;)V
    .locals 2
    .param p0, "hdr"    # Landroid/os/Handler;
    .param p1, "cid"    # I
    .param p2, "flushRequired"    # Ljava/lang/Boolean;

    .line 17
    const/16 v0, 0x34

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 21
    return-void
.end method

.method public static postEnableEpdgFailure(Landroid/os/Handler;I)V
    .locals 2
    .param p0, "hdr"    # Landroid/os/Handler;
    .param p1, "cid"    # I

    .line 24
    const/16 v0, 0x23

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 28
    return-void
.end method

.method public static postEpdgNotAvailableForDnsFailure(Landroid/os/Handler;)V
    .locals 1
    .param p0, "hdr"    # Landroid/os/Handler;

    .line 46
    const/16 v0, 0x51

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 49
    return-void
.end method

.method public static postEpdgNotAvailableForIkeError(Landroid/os/Handler;ILjava/lang/String;)V
    .locals 2
    .param p0, "hdr"    # Landroid/os/Handler;
    .param p1, "isPermanent"    # I
    .param p2, "apnType"    # Ljava/lang/String;

    .line 66
    const/16 v0, 0x66

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 69
    return-void
.end method

.method public static postEpdgNotAvailableForOnDemandFailure(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1
    .param p0, "hdr"    # Landroid/os/Handler;
    .param p1, "apnType"    # Ljava/lang/String;

    .line 52
    const/16 v0, 0x25

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 56
    return-void
.end method

.method public static postNotifyRegistrants(Landroid/os/Handler;IILjava/lang/String;)V
    .locals 1
    .param p0, "hdr"    # Landroid/os/Handler;
    .param p1, "result"    # I
    .param p2, "w2lOrL2w"    # I
    .param p3, "apnType"    # Ljava/lang/String;

    .line 39
    const/16 v0, 0x1e

    invoke-static {p0, v0, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 43
    return-void
.end method

.method public static postRetryL2WIfRequired(Landroid/os/Handler;ILjava/lang/String;)V
    .locals 2
    .param p0, "hdr"    # Landroid/os/Handler;
    .param p1, "needlteTimer"    # I
    .param p2, "apnType"    # Ljava/lang/String;

    .line 31
    const/16 v0, 0x1f

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 35
    return-void
.end method

.method public static postUpdateL2WHandoverDoneWithoutTcFailed(Landroid/os/Handler;)V
    .locals 1
    .param p0, "hdr"    # Landroid/os/Handler;

    .line 78
    const/16 v0, 0x62

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 81
    return-void
.end method

.method public static postUpdateL2WHandoverFailByNoResponse(Landroid/os/Handler;)V
    .locals 1
    .param p0, "hdr"    # Landroid/os/Handler;

    .line 84
    const/16 v0, 0x63

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 87
    return-void
.end method

.method public static postUpdateL2WHandoverFailByThrottleState(Landroid/os/Handler;)V
    .locals 1
    .param p0, "hdr"    # Landroid/os/Handler;

    .line 90
    const/16 v0, 0x64

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 93
    return-void
.end method

.method public static postUpdateWifiRssiToMaintainIWlan(Landroid/os/Handler;)V
    .locals 1
    .param p0, "hdr"    # Landroid/os/Handler;

    .line 72
    const/16 v0, 0x57

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 75
    return-void
.end method

.method public static triggerHandover(Landroid/os/Handler;ILjava/lang/Boolean;)V
    .locals 2
    .param p0, "hdr"    # Landroid/os/Handler;
    .param p1, "cid"    # I
    .param p2, "handoverToWifi"    # Ljava/lang/Boolean;

    .line 11
    const/16 v0, 0x22

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 14
    return-void
.end method
