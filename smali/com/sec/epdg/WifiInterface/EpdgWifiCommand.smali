.class public Lcom/sec/epdg/WifiInterface/EpdgWifiCommand;
.super Ljava/lang/Object;
.source "EpdgWifiCommand.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WifiInterface"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWifiRoamingForMobike(Landroid/content/Context;)I
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public static sendWifiDelayRequest(Landroid/content/Context;ZI)V
    .locals 0
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "enable"    # Z
    .param p2, "delayTime"    # I

    .line 22
    return-void
.end method

.method public static setWifiRssiPollSate(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .line 50
    return-void
.end method
