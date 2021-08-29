.class Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;
.super Ljava/lang/Object;
.source "SmartCellularProfiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/smartwifi/SmartCellularProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellularSignalStrengths"
.end annotation


# instance fields
.field private mLastCdmaEcio:I

.field private mLastEvdoEcio:I

.field private mLastGsmRssi:I

.field private mLastLteRsrp:I

.field private mLastLteRsrq:I

.field private mLastLteRssnr:I

.field private mLastTdscdmaRscp:I

.field private mLastTdscdmaRssi:I

.field private mLastWcdmaEcNo:I

.field private mLastWcdmaRscp:I

.field private mLastWcdmaRssi:I

.field final synthetic this$0:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;


# direct methods
.method constructor <init>(Lcom/sec/epdg/smartwifi/SmartCellularProfiler;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->this$0:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    invoke-virtual {p0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->clearSignalStrengths()V

    .line 188
    return-void
.end method


# virtual methods
.method public declared-synchronized clearSignalStrengths()V
    .locals 1

    monitor-enter p0

    .line 279
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->mLastLteRsrp:I

    .line 280
    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->mLastLteRsrq:I

    .line 281
    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->mLastLteRssnr:I

    .line 282
    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->mLastWcdmaRssi:I

    .line 283
    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->mLastWcdmaRscp:I

    .line 284
    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->mLastWcdmaEcNo:I

    .line 285
    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->mLastTdscdmaRssi:I

    .line 286
    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->mLastTdscdmaRscp:I

    .line 287
    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->mLastCdmaEcio:I

    .line 288
    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->mLastEvdoEcio:I

    .line 289
    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->mLastGsmRssi:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    monitor-exit p0

    return-void

    .line 278
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastCdmaEcio()I
    .locals 1

    monitor-enter p0

    .line 259
    :try_start_0
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->mLastCdmaEcio:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 259
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastEvdoEcio()I
    .locals 1

    monitor-enter p0

    .line 267
    :try_start_0
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->mLastEvdoEcio:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 267
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastGsmRssi()I
    .locals 1

    monitor-enter p0

    .line 275
    :try_start_0
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->mLastGsmRssi:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 275
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastLteRsrp()I
    .locals 1

    monitor-enter p0

    .line 195
    :try_start_0
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->mLastLteRsrp:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 195
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastLteRsrq()I
    .locals 1

    monitor-enter p0

    .line 203
    :try_start_0
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->mLastLteRsrq:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 203
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastLteRssnr()I
    .locals 1

    monitor-enter p0

    .line 211
    :try_start_0
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->mLastLteRssnr:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 211
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastTdscdmaRscp()I
    .locals 1

    monitor-enter p0

    .line 251
    :try_start_0
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->mLastTdscdmaRscp:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 251
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastTdscdmaRssi()I
    .locals 1

    monitor-enter p0

    .line 243
    :try_start_0
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->mLastTdscdmaRssi:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 243
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastWcdmaEcNo()I
    .locals 1

    monitor-enter p0

    .line 235
    :try_start_0
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->mLastWcdmaEcNo:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 235
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastWcdmaRscp()I
    .locals 1

    monitor-enter p0

    .line 227
    :try_start_0
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->mLastWcdmaRscp:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 227
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastWcdmaRssi()I
    .locals 1

    monitor-enter p0

    .line 219
    :try_start_0
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->mLastWcdmaRssi:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 219
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLastCdmaEcio(I)V
    .locals 0
    .param p1, "lastCdmaEcio"    # I

    monitor-enter p0

    .line 255
    :try_start_0
    iput p1, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->mLastCdmaEcio:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    monitor-exit p0

    return-void

    .line 254
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;
    .end local p1    # "lastCdmaEcio":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLastEvdoEcio(I)V
    .locals 0
    .param p1, "lastEvdoEcio"    # I

    monitor-enter p0

    .line 263
    :try_start_0
    iput p1, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->mLastEvdoEcio:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    monitor-exit p0

    return-void

    .line 262
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;
    .end local p1    # "lastEvdoEcio":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLastGsmRssi(I)V
    .locals 0
    .param p1, "lastGsmRssi"    # I

    monitor-enter p0

    .line 271
    :try_start_0
    iput p1, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->mLastGsmRssi:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    monitor-exit p0

    return-void

    .line 270
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;
    .end local p1    # "lastGsmRssi":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLastLteRsrp(I)V
    .locals 0
    .param p1, "lastLteRsrp"    # I

    monitor-enter p0

    .line 191
    :try_start_0
    iput p1, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->mLastLteRsrp:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit p0

    return-void

    .line 190
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;
    .end local p1    # "lastLteRsrp":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLastLteRsrq(I)V
    .locals 0
    .param p1, "lastLteRsrq"    # I

    monitor-enter p0

    .line 199
    :try_start_0
    iput p1, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->mLastLteRsrq:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit p0

    return-void

    .line 198
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;
    .end local p1    # "lastLteRsrq":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLastLteRssnr(I)V
    .locals 0
    .param p1, "lastLteRssnr"    # I

    monitor-enter p0

    .line 207
    :try_start_0
    iput p1, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->mLastLteRssnr:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit p0

    return-void

    .line 206
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;
    .end local p1    # "lastLteRssnr":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLastTdscdmaRscp(I)V
    .locals 0
    .param p1, "lastTdscdmaRscp"    # I

    monitor-enter p0

    .line 247
    :try_start_0
    iput p1, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->mLastTdscdmaRscp:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    monitor-exit p0

    return-void

    .line 246
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;
    .end local p1    # "lastTdscdmaRscp":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLastTdscdmaRssi(I)V
    .locals 0
    .param p1, "lastTdscdmaRssi"    # I

    monitor-enter p0

    .line 239
    :try_start_0
    iput p1, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->mLastTdscdmaRssi:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    monitor-exit p0

    return-void

    .line 238
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;
    .end local p1    # "lastTdscdmaRssi":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLastWcdmaEcNo(I)V
    .locals 0
    .param p1, "lastWcdmaEcNo"    # I

    monitor-enter p0

    .line 231
    :try_start_0
    iput p1, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->mLastWcdmaEcNo:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    monitor-exit p0

    return-void

    .line 230
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;
    .end local p1    # "lastWcdmaEcNo":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLastWcdmaRscp(I)V
    .locals 0
    .param p1, "lastWcdmaRscp"    # I

    monitor-enter p0

    .line 223
    :try_start_0
    iput p1, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->mLastWcdmaRscp:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit p0

    return-void

    .line 222
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;
    .end local p1    # "lastWcdmaRscp":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLastWcdmaRssi(I)V
    .locals 0
    .param p1, "lastWcdmaRssi"    # I

    monitor-enter p0

    .line 215
    :try_start_0
    iput p1, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->mLastWcdmaRssi:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    monitor-exit p0

    return-void

    .line 214
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;
    .end local p1    # "lastWcdmaRssi":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
