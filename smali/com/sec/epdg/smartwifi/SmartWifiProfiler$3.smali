.class Lcom/sec/epdg/smartwifi/SmartWifiProfiler$3;
.super Ljava/lang/Object;
.source "SmartWifiProfiler.java"

# interfaces
.implements Lcom/sec/epdg/WifiInterface/PollRssiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/smartwifi/SmartWifiProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;


# direct methods
.method constructor <init>(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    .line 1084
    iput-object p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$3;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pollRssi(I)V
    .locals 1
    .param p1, "rssi"    # I

    .line 1087
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$3;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-static {v0, p1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->access$200(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;I)V

    .line 1088
    return-void
.end method
