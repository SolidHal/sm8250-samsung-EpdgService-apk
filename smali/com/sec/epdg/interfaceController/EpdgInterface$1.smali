.class Lcom/sec/epdg/interfaceController/EpdgInterface$1;
.super Ljava/lang/Thread;
.source "EpdgInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/epdg/interfaceController/EpdgInterface;->bringUp(Ljava/util/List;Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;)V
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

    .line 152
    iput-object p1, p0, Lcom/sec/epdg/interfaceController/EpdgInterface$1;->this$0:Lcom/sec/epdg/interfaceController/EpdgInterface;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterface$1;->this$0:Lcom/sec/epdg/interfaceController/EpdgInterface;

    invoke-static {v0}, Lcom/sec/epdg/interfaceController/EpdgInterface;->access$000(Lcom/sec/epdg/interfaceController/EpdgInterface;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/interfaceController/EpdgInterface$1;->this$0:Lcom/sec/epdg/interfaceController/EpdgInterface;

    invoke-static {v2}, Lcom/sec/epdg/interfaceController/EpdgInterface;->access$100(Lcom/sec/epdg/interfaceController/EpdgInterface;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/interfaceController/EpdgInterface;->access$200(Lcom/sec/epdg/interfaceController/EpdgInterface;Ljava/lang/String;Ljava/util/List;)V

    .line 156
    return-void
.end method
