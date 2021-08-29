.class Lcom/sec/epdg/interfaceController/EpdgInterface$2;
.super Ljava/lang/Thread;
.source "EpdgInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/epdg/interfaceController/EpdgInterface;->bringDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/interfaceController/EpdgInterface;


# direct methods
.method constructor <init>(Lcom/sec/epdg/interfaceController/EpdgInterface;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/epdg/interfaceController/EpdgInterface;

    .line 162
    iput-object p1, p0, Lcom/sec/epdg/interfaceController/EpdgInterface$2;->this$0:Lcom/sec/epdg/interfaceController/EpdgInterface;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterface$2;->this$0:Lcom/sec/epdg/interfaceController/EpdgInterface;

    invoke-static {v0}, Lcom/sec/epdg/interfaceController/EpdgInterface;->access$000(Lcom/sec/epdg/interfaceController/EpdgInterface;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/interfaceController/EpdgInterface;->access$300(Lcom/sec/epdg/interfaceController/EpdgInterface;Ljava/lang/String;)V

    .line 166
    return-void
.end method
