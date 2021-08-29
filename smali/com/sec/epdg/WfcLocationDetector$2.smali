.class Lcom/sec/epdg/WfcLocationDetector$2;
.super Lcom/sec/epdg/EpdgServiceRunnable;
.source "WfcLocationDetector.java"


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

    .line 101
    iput-object p1, p0, Lcom/sec/epdg/WfcLocationDetector$2;->this$0:Lcom/sec/epdg/WfcLocationDetector;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgServiceRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public performOperation()V
    .locals 6

    .line 106
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    sget-object v0, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;->ERROR_NO_GEOCODER:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    .local v0, "result":Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;
    goto/16 :goto_1

    .line 108
    .end local v0    # "result":Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/WfcLocationDetector$2;->this$0:Lcom/sec/epdg/WfcLocationDetector;

    invoke-static {v0}, Lcom/sec/epdg/WfcLocationDetector;->access$200(Lcom/sec/epdg/WfcLocationDetector;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->isLocationServiceEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    sget-object v0, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;->ERROR_LOCATION_DISABLED:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    .restart local v0    # "result":Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;
    goto :goto_1

    .line 111
    .end local v0    # "result":Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/WfcLocationDetector$2;->this$0:Lcom/sec/epdg/WfcLocationDetector;

    invoke-static {v0}, Lcom/sec/epdg/WfcLocationDetector;->access$300(Lcom/sec/epdg/WfcLocationDetector;)Landroid/location/Location;

    move-result-object v0

    .line 112
    .local v0, "location":Landroid/location/Location;
    if-eqz v0, :cond_2

    .line 113
    iget-object v1, p0, Lcom/sec/epdg/WfcLocationDetector$2;->this$0:Lcom/sec/epdg/WfcLocationDetector;

    invoke-static {v1, v0}, Lcom/sec/epdg/WfcLocationDetector;->access$400(Lcom/sec/epdg/WfcLocationDetector;Landroid/location/Location;)Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    move-result-object v1

    move-object v0, v1

    .local v1, "result":Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;
    goto :goto_1

    .line 115
    .end local v1    # "result":Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;
    :cond_2
    iget-object v1, p0, Lcom/sec/epdg/WfcLocationDetector$2;->this$0:Lcom/sec/epdg/WfcLocationDetector;

    invoke-static {v1}, Lcom/sec/epdg/WfcLocationDetector;->access$500(Lcom/sec/epdg/WfcLocationDetector;)V

    .line 116
    iget-object v1, p0, Lcom/sec/epdg/WfcLocationDetector$2;->this$0:Lcom/sec/epdg/WfcLocationDetector;

    invoke-static {v1}, Lcom/sec/epdg/WfcLocationDetector;->access$000(Lcom/sec/epdg/WfcLocationDetector;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 118
    :try_start_0
    iget-object v2, p0, Lcom/sec/epdg/WfcLocationDetector$2;->this$0:Lcom/sec/epdg/WfcLocationDetector;

    invoke-static {v2}, Lcom/sec/epdg/WfcLocationDetector;->access$000(Lcom/sec/epdg/WfcLocationDetector;)Ljava/lang/Object;

    move-result-object v2

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    goto :goto_0

    .line 122
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 119
    :catch_0
    move-exception v2

    .line 120
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string v3, "LocDetector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in waiting..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    iget-object v1, p0, Lcom/sec/epdg/WfcLocationDetector$2;->this$0:Lcom/sec/epdg/WfcLocationDetector;

    invoke-static {v1}, Lcom/sec/epdg/WfcLocationDetector;->access$600(Lcom/sec/epdg/WfcLocationDetector;)V

    .line 125
    iget-object v1, p0, Lcom/sec/epdg/WfcLocationDetector$2;->this$0:Lcom/sec/epdg/WfcLocationDetector;

    invoke-static {v1}, Lcom/sec/epdg/WfcLocationDetector;->access$100(Lcom/sec/epdg/WfcLocationDetector;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 126
    iget-object v1, p0, Lcom/sec/epdg/WfcLocationDetector$2;->this$0:Lcom/sec/epdg/WfcLocationDetector;

    invoke-static {v1}, Lcom/sec/epdg/WfcLocationDetector;->access$100(Lcom/sec/epdg/WfcLocationDetector;)Landroid/location/Location;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/WfcLocationDetector;->access$400(Lcom/sec/epdg/WfcLocationDetector;Landroid/location/Location;)Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    move-result-object v1

    move-object v0, v1

    .restart local v1    # "result":Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;
    goto :goto_1

    .line 128
    .end local v1    # "result":Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;
    :cond_3
    sget-object v1, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;->ERROR_LOC_TIMEOUT:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    move-object v0, v1

    .line 133
    .local v0, "result":Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;
    :goto_1
    iget-object v1, p0, Lcom/sec/epdg/WfcLocationDetector$2;->this$0:Lcom/sec/epdg/WfcLocationDetector;

    sget-object v2, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;->FINISHED:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;

    invoke-static {v1, v2, v0}, Lcom/sec/epdg/WfcLocationDetector;->access$700(Lcom/sec/epdg/WfcLocationDetector;Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;)V

    .line 134
    return-void

    .line 122
    .local v0, "location":Landroid/location/Location;
    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
