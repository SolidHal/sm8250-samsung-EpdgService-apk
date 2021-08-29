.class Lcom/sec/epdg/EpdgSubScription$EpdgCountryCodeListener;
.super Ljava/lang/Object;
.source "EpdgSubScription.java"

# interfaces
.implements Landroid/location/CountryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgSubScription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgCountryCodeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgSubScription;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgSubScription;)V
    .locals 0

    .line 1937
    iput-object p1, p0, Lcom/sec/epdg/EpdgSubScription$EpdgCountryCodeListener;->this$0:Lcom/sec/epdg/EpdgSubScription;

    .line 1938
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1939
    return-void
.end method


# virtual methods
.method public onCountryDetected(Landroid/location/Country;)V
    .locals 9
    .param p1, "country"    # Landroid/location/Country;

    .line 1943
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1944
    .local v0, "countryIso":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription$EpdgCountryCodeListener;->this$0:Lcom/sec/epdg/EpdgSubScription;

    iget-object v1, v1, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCountryDetected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription$EpdgCountryCodeListener;->this$0:Lcom/sec/epdg/EpdgSubScription;

    invoke-static {v3}, Lcom/sec/epdg/EpdgSubScription;->access$400(Lcom/sec/epdg/EpdgSubScription;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1945
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription$EpdgCountryCodeListener;->this$0:Lcom/sec/epdg/EpdgSubScription;

    invoke-static {v1}, Lcom/sec/epdg/EpdgSubScription;->access$400(Lcom/sec/epdg/EpdgSubScription;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1946
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription$EpdgCountryCodeListener;->this$0:Lcom/sec/epdg/EpdgSubScription;

    iget-object v1, v1, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    const-string v2, "country_detector"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 1947
    .local v1, "countryDetector":Landroid/location/CountryDetector;
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription$EpdgCountryCodeListener;->this$0:Lcom/sec/epdg/EpdgSubScription;

    invoke-static {v2}, Lcom/sec/epdg/EpdgSubScription;->access$500(Lcom/sec/epdg/EpdgSubScription;)Lcom/sec/epdg/EpdgSubScription$EpdgCountryCodeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/location/CountryDetector;->removeCountryListener(Landroid/location/CountryListener;)V

    .line 1948
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription$EpdgCountryCodeListener;->this$0:Lcom/sec/epdg/EpdgSubScription;

    sget-object v3, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;->ALLOWED:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgSubScription;->setEpdgTemporaryBlocked(Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;)V

    .line 1949
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription$EpdgCountryCodeListener;->this$0:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription$EpdgCountryCodeListener;->this$0:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->isWifiCallingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1950
    new-instance v2, Lcom/sec/epdg/WfcProfileTask;

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription$EpdgCountryCodeListener;->this$0:Lcom/sec/epdg/EpdgSubScription;

    invoke-static {v3}, Lcom/sec/epdg/EpdgSubScription;->access$600(Lcom/sec/epdg/EpdgSubScription;)Landroid/os/Handler;

    move-result-object v4

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription$EpdgCountryCodeListener;->this$0:Lcom/sec/epdg/EpdgSubScription;

    iget-object v5, v3, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/epdg/EpdgSubScription$EpdgCountryCodeListener;->this$0:Lcom/sec/epdg/EpdgSubScription;

    iget-object v3, v6, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    .line 1951
    invoke-static {v3}, Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;->getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription$EpdgCountryCodeListener;->this$0:Lcom/sec/epdg/EpdgSubScription;

    iget v8, v3, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/sec/epdg/WfcProfileTask;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/sec/epdg/EpdgSubScription;Ljava/lang/String;I)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/sec/epdg/WfcProfileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1954
    .end local v1    # "countryDetector":Landroid/location/CountryDetector;
    :cond_1
    return-void
.end method
