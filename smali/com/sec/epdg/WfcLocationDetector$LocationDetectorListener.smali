.class public interface abstract Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener;
.super Ljava/lang/Object;
.source "WfcLocationDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/WfcLocationDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LocationDetectorListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;,
        Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;
    }
.end annotation


# virtual methods
.method public abstract onDetectorStatusChanged(Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;)V
.end method
