.class Lcom/sec/epdg/WfcLocationDetector$1;
.super Ljava/lang/Object;
.source "WfcLocationDetector.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/WfcLocationDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/WfcLocationDetector;


# direct methods
.method constructor <init>(Lcom/sec/epdg/WfcLocationDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/epdg/WfcLocationDetector;

    .line 70
    iput-object p1, p0, Lcom/sec/epdg/WfcLocationDetector$1;->this$0:Lcom/sec/epdg/WfcLocationDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .param p1, "loc"    # Landroid/location/Location;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[LocationListener]Received new location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocDetector"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/sec/epdg/WfcLocationDetector$1;->this$0:Lcom/sec/epdg/WfcLocationDetector;

    invoke-static {v0, p1}, Lcom/sec/epdg/WfcLocationDetector;->access$102(Lcom/sec/epdg/WfcLocationDetector;Landroid/location/Location;)Landroid/location/Location;

    .line 93
    iget-object v0, p0, Lcom/sec/epdg/WfcLocationDetector$1;->this$0:Lcom/sec/epdg/WfcLocationDetector;

    invoke-static {v0}, Lcom/sec/epdg/WfcLocationDetector;->access$000(Lcom/sec/epdg/WfcLocationDetector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/sec/epdg/WfcLocationDetector$1;->this$0:Lcom/sec/epdg/WfcLocationDetector;

    invoke-static {v1}, Lcom/sec/epdg/WfcLocationDetector;->access$000(Lcom/sec/epdg/WfcLocationDetector;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 95
    monitor-exit v0

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationProvider disabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocDetector"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/sec/epdg/WfcLocationDetector$1;->this$0:Lcom/sec/epdg/WfcLocationDetector;

    invoke-static {v0}, Lcom/sec/epdg/WfcLocationDetector;->access$000(Lcom/sec/epdg/WfcLocationDetector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/sec/epdg/WfcLocationDetector$1;->this$0:Lcom/sec/epdg/WfcLocationDetector;

    invoke-static {v1}, Lcom/sec/epdg/WfcLocationDetector;->access$000(Lcom/sec/epdg/WfcLocationDetector;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 81
    monitor-exit v0

    .line 82
    return-void

    .line 81
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .line 74
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 86
    return-void
.end method
