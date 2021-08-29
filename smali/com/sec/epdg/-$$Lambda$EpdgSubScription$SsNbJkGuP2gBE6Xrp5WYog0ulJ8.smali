.class public final synthetic Lcom/sec/epdg/-$$Lambda$EpdgSubScription$SsNbJkGuP2gBE6Xrp5WYog0ulJ8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/epdg/EpdgSubScription;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/epdg/EpdgSubScription;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/epdg/-$$Lambda$EpdgSubScription$SsNbJkGuP2gBE6Xrp5WYog0ulJ8;->f$0:Lcom/sec/epdg/EpdgSubScription;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/-$$Lambda$EpdgSubScription$SsNbJkGuP2gBE6Xrp5WYog0ulJ8;->f$0:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->lambda$makeEpdgServiceUp$0$EpdgSubScription()V

    return-void
.end method
