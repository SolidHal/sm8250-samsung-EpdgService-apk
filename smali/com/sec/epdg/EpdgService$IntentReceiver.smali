.class Lcom/sec/epdg/EpdgService$IntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/EpdgService;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$IntentReceiver;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p2, "x1"    # Lcom/sec/epdg/EpdgService$1;

    .line 300
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService$IntentReceiver;-><init>(Lcom/sec/epdg/EpdgService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " intent received."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[EPDGService]"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "LOADED"

    const/4 v3, -0x1

    if-eqz v0, :cond_3

    .line 305
    const-string v0, "ss"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "simState":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM_STATE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    if-eqz v0, :cond_2

    .line 308
    const-string v4, "phone"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 309
    .local v4, "simSlot":I
    const-string v5, "subscription"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 310
    .local v3, "subscription":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM_SLOT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "subscription: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    if-gez v4, :cond_0

    .line 312
    return-void

    .line 314
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v5, 0x3eb

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$200()[Lcom/sec/epdg/EpdgSubScription;

    move-result-object v2

    aget-object v2, v2, v4

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$200()[Lcom/sec/epdg/EpdgSubScription;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->isNeedsNotifySimChange()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    const-string v2, "ims service might be not initialized. wait 1 sec"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$500()Landroid/os/Handler;

    move-result-object v1

    .line 317
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$500()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v5, v4, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v5, 0x3e8

    .line 316
    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 318
    return-void

    .line 320
    :cond_1
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$500()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 321
    .local v1, "msg":Landroid/os/Message;
    iput v5, v1, Landroid/os/Message;->what:I

    .line 322
    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 323
    iput v3, v1, Landroid/os/Message;->arg2:I

    .line 324
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 325
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 327
    .end local v0    # "simState":Ljava/lang/String;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v3    # "subscription":I
    .end local v4    # "simSlot":I
    :cond_2
    goto/16 :goto_2

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.android.ims.IMS_SERVICE_UP"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    .line 328
    const-string v0, "android:phone_id"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 329
    .local v0, "simSlot":I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$500()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 330
    .restart local v1    # "msg":Landroid/os/Message;
    const/16 v2, 0x3ec

    iput v2, v1, Landroid/os/Message;->what:I

    .line 331
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 332
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 333
    .end local v0    # "simSlot":I
    .end local v1    # "msg":Landroid/os/Message;
    goto/16 :goto_2

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "com.sec.epdg.EPDG_INITIALIZE_RETRY"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 334
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$IntentReceiver;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v0, v4}, Lcom/sec/epdg/EpdgService;->access$1202(Lcom/sec/epdg/EpdgService;Z)Z

    .line 335
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$IntentReceiver;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$1308(Lcom/sec/epdg/EpdgService;)I

    .line 336
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$IntentReceiver;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$1300(Lcom/sec/epdg/EpdgService;)I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_5

    .line 337
    const-string v0, "ims service not initialized. epdgservice will not start."

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 339
    :cond_5
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$500()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$500()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3f4

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 341
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "com.samsung.carrier.action.CARRIER_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 342
    const-string v0, "mdc.sys.enable_smff"

    invoke-static {v0, v4}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 343
    .local v0, "enableSMF":Z
    if-nez v0, :cond_7

    .line 344
    return-void

    .line 346
    :cond_7
    const-string v5, "com.samsung.carrier.extra.CARRIER_STATE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 347
    .local v5, "carrierState":Ljava/lang/String;
    const-string v6, "com.samsung.carrier.extra.CARRIER_PHONE_ID"

    invoke-virtual {p2, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 348
    .local v6, "phoneId":I
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v7

    invoke-virtual {v7, v6, v4}, Lcom/samsung/android/feature/SemCarrierFeature;->getCarrierId(IZ)I

    move-result v7

    .line 349
    .local v7, "currentCarrierId":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "intent : action : INTENT_CARRIER_CHANGED  phoneId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " , extra : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v8, "UPDATED"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_8

    .line 353
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$IntentReceiver;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$1400(Lcom/sec/epdg/EpdgService;)[Z

    move-result-object v1

    aput-boolean v9, v1, v6

    .line 354
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$IntentReceiver;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v1, v6, v7}, Lcom/sec/epdg/EpdgService;->access$1500(Lcom/sec/epdg/EpdgService;II)V

    .line 355
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$IntentReceiver;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$600(Lcom/sec/epdg/EpdgService;)[Z

    move-result-object v1

    aget-boolean v1, v1, v6

    if-eqz v1, :cond_b

    .line 356
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$200()[Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    aget-object v1, v1, v6

    iget-object v2, p0, Lcom/sec/epdg/EpdgService$IntentReceiver;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$1400(Lcom/sec/epdg/EpdgService;)[Z

    move-result-object v2

    aget-boolean v2, v2, v6

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgSubScription;->setCarrierFeatureUpdate(Z)V

    .line 357
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$200()[Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->doCarrierFeatureUpdate()V

    goto/16 :goto_2

    .line 359
    :cond_8
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    if-eq v7, v3, :cond_b

    .line 361
    iget-object v2, p0, Lcom/sec/epdg/EpdgService$IntentReceiver;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v2, v6}, Lcom/sec/epdg/EpdgService;->access$1600(Lcom/sec/epdg/EpdgService;I)I

    move-result v2

    .line 362
    .local v2, "savedCarrierId":I
    iget-object v3, p0, Lcom/sec/epdg/EpdgService$IntentReceiver;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v3, v6}, Lcom/sec/epdg/EpdgService;->access$1700(Lcom/sec/epdg/EpdgService;I)Ljava/lang/String;

    move-result-object v3

    .line 363
    .local v3, "savedSwVer":Ljava/lang/String;
    sget-object v8, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 364
    .local v8, "curSwVer":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saved CarrierId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " Current Carrier Id : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " / saved Sw Ver : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " current Sw Ver : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    if-ne v2, v7, :cond_a

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    .line 372
    :cond_9
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$IntentReceiver;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$1400(Lcom/sec/epdg/EpdgService;)[Z

    move-result-object v1

    aput-boolean v4, v1, v6

    goto :goto_1

    .line 369
    :cond_a
    :goto_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$IntentReceiver;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$1400(Lcom/sec/epdg/EpdgService;)[Z

    move-result-object v1

    aput-boolean v9, v1, v6

    .line 370
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$IntentReceiver;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v1, v6, v7}, Lcom/sec/epdg/EpdgService;->access$1500(Lcom/sec/epdg/EpdgService;II)V

    .line 374
    :goto_1
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$IntentReceiver;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$600(Lcom/sec/epdg/EpdgService;)[Z

    move-result-object v1

    aget-boolean v1, v1, v6

    if-eqz v1, :cond_b

    .line 375
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$200()[Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    aget-object v1, v1, v6

    iget-object v4, p0, Lcom/sec/epdg/EpdgService$IntentReceiver;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v4}, Lcom/sec/epdg/EpdgService;->access$1400(Lcom/sec/epdg/EpdgService;)[Z

    move-result-object v4

    aget-boolean v4, v4, v6

    invoke-virtual {v1, v4}, Lcom/sec/epdg/EpdgSubScription;->setCarrierFeatureUpdate(Z)V

    .line 376
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$200()[Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->doCarrierFeatureUpdate()V

    .line 381
    .end local v0    # "enableSMF":Z
    .end local v2    # "savedCarrierId":I
    .end local v3    # "savedSwVer":Ljava/lang/String;
    .end local v5    # "carrierState":Ljava/lang/String;
    .end local v6    # "phoneId":I
    .end local v7    # "currentCarrierId":I
    .end local v8    # "curSwVer":Ljava/lang/String;
    :cond_b
    :goto_2
    return-void
.end method
