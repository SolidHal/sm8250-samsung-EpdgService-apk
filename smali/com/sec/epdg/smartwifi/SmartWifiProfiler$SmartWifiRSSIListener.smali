.class final Lcom/sec/epdg/smartwifi/SmartWifiProfiler$SmartWifiRSSIListener;
.super Landroid/content/BroadcastReceiver;
.source "SmartWifiProfiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/smartwifi/SmartWifiProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SmartWifiRSSIListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;)V
    .locals 0

    .line 974
    iput-object p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$SmartWifiRSSIListener;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;Lcom/sec/epdg/smartwifi/SmartWifiProfiler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiProfiler;
    .param p2, "x1"    # Lcom/sec/epdg/smartwifi/SmartWifiProfiler$1;

    .line 974
    invoke-direct {p0, p1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$SmartWifiRSSIListener;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 977
    const-string v0, "newRssi"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 978
    .local v0, "newRssi":I
    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$SmartWifiRSSIListener;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-static {v1, v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->access$200(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;I)V

    .line 979
    return-void
.end method
