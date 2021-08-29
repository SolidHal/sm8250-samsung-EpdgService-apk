.class public Lcom/sec/epdg/IPSecAdapterForEris$IpSecAdapterHandler;
.super Landroid/os/Handler;
.source "IPSecAdapterForEris.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IPSecAdapterForEris;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IpSecAdapterHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/IPSecAdapterForEris;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/IPSecAdapterForEris;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/epdg/IPSecAdapterForEris;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 884
    iput-object p1, p0, Lcom/sec/epdg/IPSecAdapterForEris$IpSecAdapterHandler;->this$0:Lcom/sec/epdg/IPSecAdapterForEris;

    .line 885
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 886
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 890
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 904
    :pswitch_0
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapterForEris$IpSecAdapterHandler;->this$0:Lcom/sec/epdg/IPSecAdapterForEris;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/IPSecAdapterForEris;->access$1500(Lcom/sec/epdg/IPSecAdapterForEris;II)V

    .line 906
    goto :goto_0

    .line 914
    :pswitch_1
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapterForEris$IpSecAdapterHandler;->this$0:Lcom/sec/epdg/IPSecAdapterForEris;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecAdapterForEris;->access$1800(Lcom/sec/epdg/IPSecAdapterForEris;I)V

    .line 915
    goto :goto_0

    .line 911
    :pswitch_2
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapterForEris$IpSecAdapterHandler;->this$0:Lcom/sec/epdg/IPSecAdapterForEris;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/IPSecAdapterForEris;->access$1700(Lcom/sec/epdg/IPSecAdapterForEris;II)V

    .line 912
    goto :goto_0

    .line 908
    :pswitch_3
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapterForEris$IpSecAdapterHandler;->this$0:Lcom/sec/epdg/IPSecAdapterForEris;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/IPSecAdapterForEris;->access$1600(Lcom/sec/epdg/IPSecAdapterForEris;II)V

    .line 909
    goto :goto_0

    .line 901
    :pswitch_4
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapterForEris$IpSecAdapterHandler;->this$0:Lcom/sec/epdg/IPSecAdapterForEris;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/IPSecAdapterForEris;->access$1400(Lcom/sec/epdg/IPSecAdapterForEris;II)V

    .line 902
    goto :goto_0

    .line 898
    :pswitch_5
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapterForEris$IpSecAdapterHandler;->this$0:Lcom/sec/epdg/IPSecAdapterForEris;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2, v3}, Lcom/sec/epdg/IPSecAdapterForEris;->access$1300(Lcom/sec/epdg/IPSecAdapterForEris;Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;II)V

    .line 899
    goto :goto_0

    .line 895
    :pswitch_6
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapterForEris$IpSecAdapterHandler;->this$0:Lcom/sec/epdg/IPSecAdapterForEris;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/epdg/IPSecAdapterForEris$ErisEventInfo;

    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecAdapterForEris;->access$1200(Lcom/sec/epdg/IPSecAdapterForEris;Lcom/sec/epdg/IPSecAdapterForEris$ErisEventInfo;)V

    .line 896
    goto :goto_0

    .line 892
    :pswitch_7
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapterForEris$IpSecAdapterHandler;->this$0:Lcom/sec/epdg/IPSecAdapterForEris;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/erisclient/ErisError;

    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecAdapterForEris;->access$1100(Lcom/sec/epdg/IPSecAdapterForEris;Lcom/sec/erisclient/ErisError;)V

    .line 893
    nop

    .line 919
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
