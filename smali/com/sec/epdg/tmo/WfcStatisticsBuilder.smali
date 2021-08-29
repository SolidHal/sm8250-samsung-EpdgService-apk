.class public Lcom/sec/epdg/tmo/WfcStatisticsBuilder;
.super Ljava/lang/Object;
.source "WfcStatisticsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Bearer;,
        Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Direction;,
        Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;,
        Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;,
        Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;
    }
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String; = "com.tmobile.comm.METRIC"

.field private static final EXTRA:Ljava/lang/String; = "PARMS"

.field private static final LOG_TAG:Ljava/lang/String; = "DeviceReport"

.field private static final PERMISSION:Ljava/lang/String; = "com.tmobile.comm.RECEIVE_METRICS"

.field public static final SIGNATURES:Landroid/content/pm/Signature;

.field public static final TMO_MYACCOUNT:Ljava/lang/String; = "com.tmobile.pr.mytmobile"

.field private static mIsMyAccountSignature:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataSet:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Landroid/util/Pair<",
            "Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->mIsMyAccountSignature:Z

    .line 28
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "308203623082024aa00302010202044df1bf45300d06092a864886f70d01010505003073310b3009060355040613025553310b30090603550408130257413111300f0603550407130842656c6c657675653111300f060355040a1308542d4d6f62696c6531133011060355040b130a546563686e6f6c6f6779311c301a0603550403131350726f64756374205265616c697a6174696f6e301e170d3131303631303036353235335a170d3338313032363036353235335a3073310b3009060355040613025553310b30090603550408130257413111300f0603550407130842656c6c657675653111300f060355040a1308542d4d6f62696c6531133011060355040b130a546563686e6f6c6f6779311c301a0603550403131350726f64756374205265616c697a6174696f6e30820122300d06092a864886f70d01010105000382010f003082010a0282010100c1456176d31c8989df7e0b30569da5c9b782380d3ff28fb48b4a17c8a125f40ba14862518397800f7a1030bf7cc188b9296d84af5cc5dc37752a1ca2c33d654258a3fdd29d19f2a0dd4e24b328b03bfef8c17bb8da11a25fdae10c1e1e288e3c1f47ee47617972382b0854474da1d6b526b9787d9a2f8e00600a4e436bfa790d04a0376fd7bd5c6ee78a6e522bbaa969d63667d17ca8fd90087fcc4acf2a2676d341a8e19dc46beb82bb1990710bd4101df8943ef8a3f2d7cb0bac6677ae69f9f3d25c134c08dfeb82000f44dea4164f90a65e352387fdd203c3479cfb380a2f8af5af3219a726ba9d82d72229a8d32979ce84be52006f4b71fe75011e8e2d090203010001300d06092a864886f70d01010505000382010100188d18ea72a49334736e118e766744489c7a5c47543cc35cc62a8cce35e84dfd426af3595fe55192dcb2a54c594a8d0de064dad96d72969fbc873c7a9fe7e14b11aed16c6d4bf90c1911b7d8a054c0c34c7a58c4a434d46e72f6142b654af24d461089c4633aa21cead0b154efac0aec4d68403c51bceab76c33a819857531c6a459a266f495f810417e9583d71f3f53a533f1e7013007253e9ed3466432a21977837669cff2b6b20612c055ff09b44ca15ca6830cdb289398d290852d3b0204deecbb00292194cc7533e5ae593e0d355883ea8022eb6fe5e807d6c059b3f6d6f637cd4014da425742f21b54ec37c6f55d3f0b8b6ced1cbc09376e8ea023396f"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->SIGNATURES:Landroid/content/pm/Signature;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$1;

    invoke-direct {v1, p0}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$1;-><init>(Lcom/sec/epdg/tmo/WfcStatisticsBuilder;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->mDataSet:Ljava/util/TreeSet;

    .line 116
    iput-object p1, p0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->mContext:Landroid/content/Context;

    .line 117
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 118
    return-void
.end method

.method private getMyaccountSignature()Z
    .locals 9

    .line 204
    const-string v0, "DeviceReport"

    iget-object v1, p0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 206
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "com.tmobile.pr.mytmobile"

    const/16 v4, 0x40

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 208
    .local v3, "signatures":[Landroid/content/pm/Signature;
    if-eqz v3, :cond_2

    .line 209
    array-length v4, v3

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 210
    .local v6, "signature":Landroid/content/pm/Signature;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v8, v3

    if-ge v7, v8, :cond_1

    .line 211
    sget-object v8, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->SIGNATURES:Landroid/content/pm/Signature;

    invoke-virtual {v6, v8}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 212
    const/4 v8, 0x1

    sput-boolean v8, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->mIsMyAccountSignature:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    goto :goto_2

    .line 210
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 209
    .end local v6    # "signature":Landroid/content/pm/Signature;
    .end local v7    # "i":I
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 221
    .end local v3    # "signatures":[Landroid/content/pm/Signature;
    :cond_2
    nop

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsMyAccountSignature : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->mIsMyAccountSignature:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    sget-boolean v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->mIsMyAccountSignature:Z

    return v0

    .line 218
    :catch_0
    move-exception v3

    .line 219
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "Package is not installed"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return v2
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .line 167
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tmobile.comm.METRIC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PARMS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    return-object v0
.end method

.method public getSHA256(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "value"    # Ljava/lang/String;

    .line 185
    const-string v0, "DeviceReport"

    const-string v1, ""

    if-nez p1, :cond_0

    return-object v1

    .line 187
    :cond_0
    :try_start_0
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 188
    .local v2, "digester":Ljava/security/MessageDigest;
    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 189
    .local v3, "digest":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .local v4, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_1

    .line 192
    aget-byte v6, v3, v5

    and-int/lit16 v6, v6, 0xff

    add-int/lit16 v6, v6, 0x100

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 194
    .end local v5    # "i":I
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 197
    .end local v2    # "digester":Ljava/security/MessageDigest;
    .end local v3    # "digest":[B
    .end local v4    # "result":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 198
    .local v2, "e2":Ljava/io/UnsupportedEncodingException;
    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 195
    .end local v2    # "e2":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v2

    .line 196
    .local v2, "e1":Ljava/security/NoSuchAlgorithmException;
    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    .end local v2    # "e1":Ljava/security/NoSuchAlgorithmException;
    nop

    .line 200
    :goto_1
    return-object v1
.end method

.method public reset()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->mDataSet:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 182
    return-void
.end method

.method public sendBroadcast()V
    .locals 4

    .line 227
    const-string v0, "DeviceReport"

    sget-object v1, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Bearer;->WiFi:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Bearer;

    invoke-virtual {p0, v1}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->setBearer(Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Bearer;)Lcom/sec/epdg/tmo/WfcStatisticsBuilder;

    .line 229
    :try_start_0
    iget-object v1, p0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 230
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    .line 231
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->setRSSI(I)Lcom/sec/epdg/tmo/WfcStatisticsBuilder;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v1    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_0
    goto :goto_0

    .line 233
    :catch_0
    move-exception v1

    .line 234
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "WfcStatisticsBuilder/sendBroadcast(): rssi value failed to obtain"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_0
    invoke-direct {p0}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->getMyaccountSignature()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    iget-object v1, p0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.tmobile.comm.RECEIVE_METRICS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 239
    const-string v1, "broadcast sent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_1
    return-void
.end method

.method public setAC(Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;)Lcom/sec/epdg/tmo/WfcStatisticsBuilder;
    .locals 4
    .param p1, "action"    # Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;

    .line 126
    iget-object v0, p0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->mDataSet:Ljava/util/TreeSet;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;->AC:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    invoke-virtual {p1}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 127
    return-object p0
.end method

.method public setBearer(Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Bearer;)Lcom/sec/epdg/tmo/WfcStatisticsBuilder;
    .locals 4
    .param p1, "bearer"    # Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Bearer;

    .line 162
    iget-object v0, p0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->mDataSet:Ljava/util/TreeSet;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;->BEARER:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    invoke-virtual {p1}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Bearer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 163
    return-object p0
.end method

.method public setDIR(Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Direction;)Lcom/sec/epdg/tmo/WfcStatisticsBuilder;
    .locals 4
    .param p1, "dir"    # Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Direction;

    .line 152
    iget-object v0, p0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->mDataSet:Ljava/util/TreeSet;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;->DIR:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    invoke-virtual {p1}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Direction;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 153
    return-object p0
.end method

.method public setHashedPM(Ljava/lang/String;)Lcom/sec/epdg/tmo/WfcStatisticsBuilder;
    .locals 3
    .param p1, "hashedPm"    # Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->mDataSet:Ljava/util/TreeSet;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;->PM:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    invoke-direct {v1, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 142
    return-object p0
.end method

.method public setMSG(Ljava/lang/String;)Lcom/sec/epdg/tmo/WfcStatisticsBuilder;
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->mDataSet:Ljava/util/TreeSet;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;->MSG:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    invoke-direct {v1, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 137
    return-object p0
.end method

.method public setOK(Z)Lcom/sec/epdg/tmo/WfcStatisticsBuilder;
    .locals 4
    .param p1, "ok"    # Z

    .line 157
    iget-object v0, p0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->mDataSet:Ljava/util/TreeSet;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;->OK:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 158
    return-object p0
.end method

.method public setRSSI(I)Lcom/sec/epdg/tmo/WfcStatisticsBuilder;
    .locals 4
    .param p1, "value"    # I

    .line 131
    iget-object v0, p0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->mDataSet:Ljava/util/TreeSet;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;->RSSI:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 132
    return-object p0
.end method

.method public setSVC(Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;)Lcom/sec/epdg/tmo/WfcStatisticsBuilder;
    .locals 4
    .param p1, "service"    # Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;

    .line 121
    iget-object v0, p0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->mDataSet:Ljava/util/TreeSet;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;->SVC:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    invoke-virtual {p1}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 122
    return-object p0
.end method

.method public setTimeStamp()Lcom/sec/epdg/tmo/WfcStatisticsBuilder;
    .locals 5

    .line 146
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->mDataSet:Ljava/util/TreeSet;

    new-instance v2, Landroid/util/Pair;

    sget-object v3, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;->TS:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 148
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->mDataSet:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 175
    .local v2, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;Ljava/lang/String;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    invoke-virtual {v3}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    .end local v2    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;Ljava/lang/String;>;"
    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1
.end method
