.class Lcom/sec/epdg/handover/EpdgImsListener$2;
.super Ljava/util/HashMap;
.source "EpdgImsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/epdg/handover/EpdgImsListener;-><init>(Landroid/content/Context;Landroid/os/Handler;ILcom/sec/epdg/EpdgSubScription;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/handover/EpdgImsListener;


# direct methods
.method constructor <init>(Lcom/sec/epdg/handover/EpdgImsListener;)V
    .locals 3
    .param p1, "this$0"    # Lcom/sec/epdg/handover/EpdgImsListener;

    .line 87
    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsListener$2;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 89
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener;->IMS_SETTING_VOLTE_PROVISIONED:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener$2;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->access$300(Lcom/sec/epdg/handover/EpdgImsListener;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/epdg/handover/EpdgImsListener;->access$400(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/epdg/handover/EpdgImsListener$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener;->IMS_SETTING_VWF_PROVISIONED:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsListener$2;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->access$300(Lcom/sec/epdg/handover/EpdgImsListener;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/sec/epdg/handover/EpdgImsListener;->access$400(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/epdg/handover/EpdgImsListener$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method
