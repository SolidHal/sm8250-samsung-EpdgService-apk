.class Lcom/sec/epdg/interfaceController/EpdgInterfaceController$EpdgInterfaceObserver;
.super Lcom/sec/epdg/EpdgNetworkMgmtObserver;
.source "EpdgInterfaceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/interfaceController/EpdgInterfaceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgInterfaceObserver"
.end annotation


# instance fields
.field public INTTAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/epdg/interfaceController/EpdgInterfaceController;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/interfaceController/EpdgInterfaceController;Landroid/os/Handler;)V
    .locals 1
    .param p2, "hdr"    # Landroid/os/Handler;

    .line 214
    iput-object p1, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController$EpdgInterfaceObserver;->this$0:Lcom/sec/epdg/interfaceController/EpdgInterfaceController;

    .line 215
    invoke-direct {p0, p2}, Lcom/sec/epdg/EpdgNetworkMgmtObserver;-><init>(Landroid/os/Handler;)V

    .line 212
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SIM"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController$EpdgInterfaceObserver;->this$0:Lcom/sec/epdg/interfaceController/EpdgInterfaceController;

    invoke-static {v0}, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->access$000(Lcom/sec/epdg/interfaceController/EpdgInterfaceController;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " [EpdgInterfaceObserver]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController$EpdgInterfaceObserver;->INTTAG:Ljava/lang/String;

    .line 216
    return-void
.end method

.method private sendInterfaceMessage(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController$EpdgInterfaceObserver;->this$0:Lcom/sec/epdg/interfaceController/EpdgInterfaceController;

    invoke-static {v0}, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->access$000(Lcom/sec/epdg/interfaceController/EpdgInterfaceController;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getMobileInterfacePrefix()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "mobileIntfPrefix":Ljava/lang/String;
    const/4 v1, 0x0

    .line 235
    .local v1, "alphabeticSubString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 236
    .local v2, "numericSubString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 238
    .local v3, "cid":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v4, v5, :cond_0

    .line 239
    iget-object v4, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController$EpdgInterfaceObserver;->this$0:Lcom/sec/epdg/interfaceController/EpdgInterfaceController;

    invoke-static {v4}, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->access$100(Lcom/sec/epdg/interfaceController/EpdgInterfaceController;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Not Mobile Interface. Ignoring Event"

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void

    .line 243
    :cond_0
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v4

    .line 248
    nop

    .line 249
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 251
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move v3, v4

    .line 255
    nop

    .line 256
    iget-object v4, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController$EpdgInterfaceObserver;->INTTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Interface Number is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x8

    if-lt v3, v4, :cond_1

    goto :goto_0

    .line 260
    :cond_1
    iget-object v4, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController$EpdgInterfaceObserver;->this$0:Lcom/sec/epdg/interfaceController/EpdgInterfaceController;

    invoke-static {v4}, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->access$000(Lcom/sec/epdg/interfaceController/EpdgInterfaceController;)I

    move-result v4

    invoke-static {v4}, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->getEpdgInterfaceHandler(I)Lcom/sec/epdg/interfaceController/EpdgInterfaceController;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v4

    .line 261
    .local v4, "interfaceMsg":Landroid/os/Message;
    iput p2, v4, Landroid/os/Message;->what:I

    .line 262
    add-int/lit8 v5, v3, 0x1

    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 263
    if-eqz p3, :cond_2

    .line 264
    iput-object p3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 266
    :cond_2
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 258
    .end local v4    # "interfaceMsg":Landroid/os/Message;
    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController$EpdgInterfaceObserver;->INTTAG:Ljava/lang/String;

    const-string v5, "Ignoring the interface change event as it is not related to bringing up/down the mobile interface."

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :goto_1
    return-void

    .line 252
    :catch_0
    move-exception v4

    .line 253
    .local v4, "e":Ljava/lang/NumberFormatException;
    iget-object v5, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController$EpdgInterfaceObserver;->INTTAG:Ljava/lang/String;

    const-string v6, "Error!!!, cid is not converted into number, returning"

    invoke-static {v5, v6}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-void

    .line 244
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v4

    .line 245
    .local v4, "e":Ljava/lang/StringIndexOutOfBoundsException;
    iget-object v5, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController$EpdgInterfaceObserver;->INTTAG:Ljava/lang/String;

    const-string v6, "Array indexes are out of bounds"

    invoke-static {v5, v6}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v4}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    .line 247
    return-void
.end method


# virtual methods
.method public EpdgAddressUpdated(Landroid/net/LinkAddress;Ljava/lang/String;)V
    .locals 1
    .param p1, "linkAddress"    # Landroid/net/LinkAddress;
    .param p2, "iface"    # Ljava/lang/String;

    .line 227
    if-eqz p1, :cond_0

    .line 228
    const/4 v0, 0x2

    invoke-direct {p0, p2, v0, p1}, Lcom/sec/epdg/interfaceController/EpdgInterfaceController$EpdgInterfaceObserver;->sendInterfaceMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 230
    :cond_0
    return-void
.end method

.method public EpdgInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .line 220
    move v0, p2

    .line 221
    .local v0, "what":I
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/epdg/interfaceController/EpdgInterfaceController$EpdgInterfaceObserver;->sendInterfaceMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 222
    return-void
.end method
