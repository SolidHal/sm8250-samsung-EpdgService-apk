.class Lcom/sec/epdg/EpdgService$EpdgServiceHandler;
.super Landroid/os/Handler;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/EpdgService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 234
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$EpdgServiceHandler;->this$0:Lcom/sec/epdg/EpdgService;

    .line 235
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 236
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 240
    invoke-static {}, Lcom/sec/epdg/EpdgService;->incrementThreadCounter()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/sec/epdg/Constants/EpdgCommands$EpdgRxEvents;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[EPDGService]"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x6c

    if-eq v0, v2, :cond_7

    const/16 v2, 0x3eb

    if-eq v0, v2, :cond_6

    const/16 v2, 0x3ec

    const/4 v3, 0x5

    if-eq v0, v2, :cond_3

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 263
    :pswitch_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$EpdgServiceHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$400(Lcom/sec/epdg/EpdgService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$EpdgServiceHandler;->this$0:Lcom/sec/epdg/EpdgService;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgService;->scheduleTerminateEvent(I)V

    .line 265
    goto/16 :goto_1

    .line 267
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$500()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3f3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 268
    const/4 v0, 0x0

    .local v0, "phoneId":I
    :goto_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgServiceHandler;->this$0:Lcom/sec/epdg/EpdgService;

    iget-object v1, v1, Lcom/sec/epdg/EpdgService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 269
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgServiceHandler;->this$0:Lcom/sec/epdg/EpdgService;

    iget-object v1, v1, Lcom/sec/epdg/EpdgService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    if-ne v3, v1, :cond_1

    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgServiceHandler;->this$0:Lcom/sec/epdg/EpdgService;

    .line 270
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$600(Lcom/sec/epdg/EpdgService;)[Z

    move-result-object v1

    aget-boolean v1, v1, v0

    if-nez v1, :cond_1

    .line 271
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgServiceHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v1, v0}, Lcom/sec/epdg/EpdgService;->access$700(Lcom/sec/epdg/EpdgService;I)V

    .line 268
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    .end local v0    # "phoneId":I
    :cond_2
    goto/16 :goto_1

    .line 286
    :pswitch_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$EpdgServiceHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$1000(Lcom/sec/epdg/EpdgService;)V

    .line 287
    goto/16 :goto_1

    .line 282
    :pswitch_2
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$EpdgServiceHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$900(Lcom/sec/epdg/EpdgService;)V

    .line 283
    goto/16 :goto_1

    .line 277
    :pswitch_3
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$EpdgServiceHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$800(Lcom/sec/epdg/EpdgService;)[I

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    aput v2, v0, v1

    .line 278
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$EpdgServiceHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$900(Lcom/sec/epdg/EpdgService;)V

    .line 279
    goto :goto_1

    .line 250
    :cond_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 251
    .local v0, "simSlot":I
    iget-object v2, p0, Lcom/sec/epdg/EpdgService$EpdgServiceHandler;->this$0:Lcom/sec/epdg/EpdgService;

    iget-object v2, v2, Lcom/sec/epdg/EpdgService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    if-eq v3, v2, :cond_4

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ims service up without sim card. ignore."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    goto :goto_1

    .line 255
    :cond_4
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$200()[Lcom/sec/epdg/EpdgSubScription;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getMnoNameFromDB()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", imsService is not available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    goto :goto_1

    .line 259
    :cond_5
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgServiceHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v1, v0}, Lcom/sec/epdg/EpdgService;->access$300(Lcom/sec/epdg/EpdgService;I)V

    .line 260
    goto :goto_1

    .line 244
    .end local v0    # "simSlot":I
    :cond_6
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$EpdgServiceHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v0, p1}, Lcom/sec/epdg/EpdgService;->access$100(Lcom/sec/epdg/EpdgService;Landroid/os/Message;)V

    .line 245
    goto :goto_1

    .line 290
    :cond_7
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$EpdgServiceHandler;->this$0:Lcom/sec/epdg/EpdgService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/EpdgService;->access$1100(Lcom/sec/epdg/EpdgService;ZI)V

    .line 295
    :goto_1
    invoke-static {}, Lcom/sec/epdg/EpdgService;->decrementThreadCounter()V

    .line 297
    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x3f2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
