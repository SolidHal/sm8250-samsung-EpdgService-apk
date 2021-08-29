.class public Lcom/sec/epdg/WfcLocationDetector;
.super Ljava/lang/Object;
.source "WfcLocationDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener;
    }
.end annotation


# static fields
.field private static final LOCATE_ME_DELAY:I = 0xea60

.field private static final LOCATION_STALE_THRESHOLD:I = 0xdbba0

.field private static final LOCATION_UPDATE_MIN_DISTANCE:J = 0x1f4L

.field private static final LOCATION_UPDATE_MIN_TIME:J = 0x3e8L

.field private static final MAX_ADDR_RESULT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LocDetector"

.field private static sInstance:Lcom/sec/epdg/WfcLocationDetector;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCountryDetectedTime:J

.field private mDetectedCountryCode:Ljava/lang/String;

.field private mDetectorResult:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

.field private mDetectorState:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;

.field private mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mLoc:Landroid/location/Location;

.field private mLocDetectorListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocatingAddressTask:Ljava/lang/Runnable;

.field private mLocationListener:Landroid/location/LocationListener;

.field private mLocationLooper:Landroid/os/HandlerThread;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/sec/epdg/WfcLocationDetector$1;

    invoke-direct {v0, p0}, Lcom/sec/epdg/WfcLocationDetector$1;-><init>(Lcom/sec/epdg/WfcLocationDetector;)V

    iput-object v0, p0, Lcom/sec/epdg/WfcLocationDetector;->mLocationListener:Landroid/location/LocationListener;

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/WfcLocationDetector;->mLock:Ljava/lang/Object;

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/WfcLocationDetector;->mLoc:Landroid/location/Location;

    .line 101
    new-instance v1, Lcom/sec/epdg/WfcLocationDetector$2;

    invoke-direct {v1, p0}, Lcom/sec/epdg/WfcLocationDetector$2;-><init>(Lcom/sec/epdg/WfcLocationDetector;)V

    iput-object v1, p0, Lcom/sec/epdg/WfcLocationDetector;->mLocatingAddressTask:Ljava/lang/Runnable;

    .line 146
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/epdg/WfcLocationDetector;->mCountryDetectedTime:J

    .line 151
    sget-object v1, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;->IDLE:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;

    iput-object v1, p0, Lcom/sec/epdg/WfcLocationDetector;->mDetectorState:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;

    .line 152
    sget-object v1, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;->NONE:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    iput-object v1, p0, Lcom/sec/epdg/WfcLocationDetector;->mDetectorResult:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    .line 156
    iput-object v0, p0, Lcom/sec/epdg/WfcLocationDetector;->mLocationManager:Landroid/location/LocationManager;

    .line 161
    iput-object p1, p0, Lcom/sec/epdg/WfcLocationDetector;->mContext:Landroid/content/Context;

    .line 162
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/sec/epdg/WfcLocationDetector;->mLocationManager:Landroid/location/LocationManager;

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/WfcLocationDetector;->mLocDetectorListenerMap:Ljava/util/HashMap;

    .line 164
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/WfcLocationDetector;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 165
    return-void
.end method

.method static synthetic access$000(Lcom/sec/epdg/WfcLocationDetector;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/WfcLocationDetector;

    .line 28
    iget-object v0, p0, Lcom/sec/epdg/WfcLocationDetector;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/epdg/WfcLocationDetector;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/WfcLocationDetector;

    .line 28
    iget-object v0, p0, Lcom/sec/epdg/WfcLocationDetector;->mLoc:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/epdg/WfcLocationDetector;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/WfcLocationDetector;
    .param p1, "x1"    # Landroid/location/Location;

    .line 28
    iput-object p1, p0, Lcom/sec/epdg/WfcLocationDetector;->mLoc:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/epdg/WfcLocationDetector;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/WfcLocationDetector;

    .line 28
    iget-object v0, p0, Lcom/sec/epdg/WfcLocationDetector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/epdg/WfcLocationDetector;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/WfcLocationDetector;

    .line 28
    invoke-direct {p0}, Lcom/sec/epdg/WfcLocationDetector;->getGoodLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/epdg/WfcLocationDetector;Landroid/location/Location;)Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/WfcLocationDetector;
    .param p1, "x1"    # Landroid/location/Location;

    .line 28
    invoke-direct {p0, p1}, Lcom/sec/epdg/WfcLocationDetector;->checkDetectedLocation(Landroid/location/Location;)Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/epdg/WfcLocationDetector;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/WfcLocationDetector;

    .line 28
    invoke-direct {p0}, Lcom/sec/epdg/WfcLocationDetector;->requestLocationUpdates()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/epdg/WfcLocationDetector;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/WfcLocationDetector;

    .line 28
    invoke-direct {p0}, Lcom/sec/epdg/WfcLocationDetector;->stopLocationUpdate()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/epdg/WfcLocationDetector;Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/WfcLocationDetector;
    .param p1, "x1"    # Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;
    .param p2, "x2"    # Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/WfcLocationDetector;->notifyDetectorState(Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;)V

    return-void
.end method

.method private checkDetectedLocation(Landroid/location/Location;)Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;
    .locals 7
    .param p1, "loc"    # Landroid/location/Location;

    .line 344
    const-string v0, "LocDetector"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    const-string v1, "Location source is from Mock Provider, ignored!!!"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    sget-object v0, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;->ERROR_LOC_TIMEOUT:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    return-object v0

    .line 350
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/WfcLocationDetector;->getAddress(Landroid/location/Location;)Ljava/util/List;

    move-result-object v1

    .line 351
    .local v1, "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 352
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Address;

    invoke-virtual {v3}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v3

    .line 353
    .local v3, "countryName":Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    .line 354
    .local v2, "countryCode":Ljava/lang/String;
    iput-object v2, p0, Lcom/sec/epdg/WfcLocationDetector;->mDetectedCountryCode:Ljava/lang/String;

    .line 355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/epdg/WfcLocationDetector;->mCountryDetectedTime:J

    .line 357
    sget-object v4, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;->COUNTRY_DETECTED:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    .line 358
    .local v4, "result":Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Detected Country info: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/sec/epdg/Logger/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .end local v2    # "countryCode":Ljava/lang/String;
    .end local v3    # "countryName":Ljava/lang/String;
    goto :goto_0

    .line 360
    .end local v4    # "result":Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;
    :cond_1
    sget-object v4, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;->ERROR_NW_TIMEOUT:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    .line 361
    .restart local v4    # "result":Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;
    if-eqz p1, :cond_2

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot lookup the address by detected location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :cond_2
    :goto_0
    return-object v4
.end method

.method public static deinitialize()V
    .locals 1

    .line 408
    sget-object v0, Lcom/sec/epdg/WfcLocationDetector;->sInstance:Lcom/sec/epdg/WfcLocationDetector;

    if-eqz v0, :cond_0

    .line 409
    invoke-direct {v0}, Lcom/sec/epdg/WfcLocationDetector;->stopLocationUpdate()V

    .line 410
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/epdg/WfcLocationDetector;->sInstance:Lcom/sec/epdg/WfcLocationDetector;

    .line 412
    :cond_0
    return-void
.end method

.method private getAddress(Landroid/location/Location;)Ljava/util/List;
    .locals 10
    .param p1, "loc"    # Landroid/location/Location;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            ")",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .line 376
    const-string v0, "LocDetector"

    if-nez p1, :cond_0

    .line 377
    const-string v1, "location is null"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const/4 v0, 0x0

    return-object v0

    .line 380
    :cond_0
    new-instance v1, Landroid/location/Geocoder;

    iget-object v2, p0, Lcom/sec/epdg/WfcLocationDetector;->mContext:Landroid/content/Context;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 381
    .local v1, "geocoder":Landroid/location/Geocoder;
    const/4 v2, 0x0

    .line 383
    .local v2, "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    const/4 v3, 0x0

    .line 384
    .local v3, "retry":Z
    const/4 v4, 0x0

    move-object v7, v2

    move v8, v3

    move v9, v4

    .line 387
    .end local v2    # "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v3    # "retry":Z
    .local v7, "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .local v8, "retry":Z
    .local v9, "count":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    .end local v7    # "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .restart local v2    # "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    if-nez v2, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 395
    .end local v8    # "retry":Z
    .restart local v3    # "retry":Z
    :goto_1
    move-object v7, v2

    move v8, v3

    goto :goto_2

    .line 392
    .end local v2    # "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v3    # "retry":Z
    .restart local v7    # "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .restart local v8    # "retry":Z
    :catch_0
    move-exception v2

    .line 393
    .local v2, "ie":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO issue, retry again: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sec/epdg/Logger/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const/4 v3, 0x1

    move v8, v3

    .end local v8    # "retry":Z
    .restart local v3    # "retry":Z
    goto :goto_2

    .line 389
    .end local v2    # "ie":Ljava/io/IOException;
    .end local v3    # "retry":Z
    .restart local v8    # "retry":Z
    :catch_1
    move-exception v2

    .line 390
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid location: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sec/epdg/Logger/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const/4 v2, 0x0

    .line 395
    .end local v8    # "retry":Z
    .local v2, "retry":Z
    move v8, v2

    .line 396
    .end local v2    # "retry":Z
    .restart local v8    # "retry":Z
    :goto_2
    if-eqz v8, :cond_2

    .line 398
    const-wide/16 v2, 0x7d0

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 400
    goto :goto_3

    .line 399
    :catch_2
    move-exception v2

    .line 402
    :cond_2
    :goto_3
    if-eqz v8, :cond_4

    add-int/lit8 v4, v9, 0x1

    .end local v9    # "count":I
    .local v4, "count":I
    const/4 v2, 0x5

    if-lt v9, v2, :cond_3

    move v9, v4

    goto :goto_4

    :cond_3
    move v9, v4

    goto :goto_0

    .line 404
    .end local v4    # "count":I
    .restart local v9    # "count":I
    :cond_4
    :goto_4
    return-object v7
.end method

.method private getGoodLastKnownLocation()Landroid/location/Location;
    .locals 7

    .line 305
    const-string v0, "LocDetector"

    const/4 v1, 0x0

    .local v1, "locNet":Landroid/location/Location;
    const/4 v2, 0x0

    .line 307
    .local v2, "locGps":Landroid/location/Location;
    :try_start_0
    iget-object v3, p0, Lcom/sec/epdg/WfcLocationDetector;->mLocationManager:Landroid/location/LocationManager;

    const-string v4, "network"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    move-object v1, v3

    .line 308
    iget-object v3, p0, Lcom/sec/epdg/WfcLocationDetector;->mLocationManager:Landroid/location/LocationManager;

    const-string v4, "gps"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 311
    goto :goto_0

    .line 309
    :catch_0
    move-exception v3

    .line 310
    .local v3, "se":Ljava/lang/SecurityException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Location access denied, which should not be happening: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sec/epdg/Logger/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    .end local v3    # "se":Ljava/lang/SecurityException;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Last known location,from  network: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", from GPS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sec/epdg/Logger/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0, v2}, Lcom/sec/epdg/WfcLocationDetector;->isStale(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/sec/epdg/WfcLocationDetector;->isStale(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 317
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 321
    :cond_2
    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    invoke-direct {p0, v1}, Lcom/sec/epdg/WfcLocationDetector;->isStale(Landroid/location/Location;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 322
    return-object v1

    .line 326
    :cond_3
    if-nez v1, :cond_4

    if-eqz v2, :cond_4

    invoke-direct {p0, v2}, Lcom/sec/epdg/WfcLocationDetector;->isStale(Landroid/location/Location;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 327
    return-object v2

    .line 331
    :cond_4
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_5

    .line 332
    return-object v2

    .line 334
    :cond_5
    return-object v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/epdg/WfcLocationDetector;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/sec/epdg/WfcLocationDetector;

    monitor-enter v0

    .line 168
    :try_start_0
    sget-object v1, Lcom/sec/epdg/WfcLocationDetector;->sInstance:Lcom/sec/epdg/WfcLocationDetector;

    if-nez v1, :cond_0

    .line 169
    new-instance v1, Lcom/sec/epdg/WfcLocationDetector;

    invoke-direct {v1, p0}, Lcom/sec/epdg/WfcLocationDetector;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sec/epdg/WfcLocationDetector;->sInstance:Lcom/sec/epdg/WfcLocationDetector;

    .line 171
    :cond_0
    sget-object v1, Lcom/sec/epdg/WfcLocationDetector;->sInstance:Lcom/sec/epdg/WfcLocationDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 167
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private isStale(Landroid/location/Location;)Z
    .locals 4
    .param p1, "loc"    # Landroid/location/Location;

    .line 292
    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xdbba0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    .line 295
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 293
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private notifyDetectorState(Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;)V
    .locals 4
    .param p1, "state"    # Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;
    .param p2, "result"    # Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WfcLocationDetector state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocDetector"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iput-object p1, p0, Lcom/sec/epdg/WfcLocationDetector;->mDetectorState:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;

    .line 257
    iput-object p2, p0, Lcom/sec/epdg/WfcLocationDetector;->mDetectorResult:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    .line 259
    iget-object v0, p0, Lcom/sec/epdg/WfcLocationDetector;->mLocDetectorListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener;

    .line 260
    .local v1, "listener":Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener;
    if-eqz v1, :cond_0

    .line 261
    iget-object v2, p0, Lcom/sec/epdg/WfcLocationDetector;->mDetectorState:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;

    iget-object v3, p0, Lcom/sec/epdg/WfcLocationDetector;->mDetectorResult:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    invoke-interface {v1, v2, v3}, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener;->onDetectorStatusChanged(Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;)V

    .line 263
    .end local v1    # "listener":Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener;
    :cond_0
    goto :goto_0

    .line 264
    :cond_1
    return-void
.end method

.method private requestLocationUpdates()V
    .locals 9

    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, "locProvider":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/epdg/WfcLocationDetector;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    const-string v0, "network"

    goto :goto_0

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/WfcLocationDetector;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    const-string v0, "gps"

    goto :goto_0

    .line 277
    :cond_1
    const-string v0, "passive"

    .line 281
    :goto_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v8, "LocDetector"

    invoke-direct {v1, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/epdg/WfcLocationDetector;->mLocationLooper:Landroid/os/HandlerThread;

    .line 282
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 284
    :try_start_0
    iget-object v1, p0, Lcom/sec/epdg/WfcLocationDetector;->mLocationManager:Landroid/location/LocationManager;

    const-wide/16 v3, 0x3e8

    const/high16 v5, 0x43fa0000    # 500.0f

    iget-object v6, p0, Lcom/sec/epdg/WfcLocationDetector;->mLocationListener:Landroid/location/LocationListener;

    iget-object v2, p0, Lcom/sec/epdg/WfcLocationDetector;->mLocationLooper:Landroid/os/HandlerThread;

    .line 285
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    .line 284
    move-object v2, v0

    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    goto :goto_1

    .line 286
    :catch_0
    move-exception v1

    .line 287
    .local v1, "se":Ljava/lang/SecurityException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Location access denied, which should not be happening: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/sec/epdg/Logger/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .end local v1    # "se":Ljava/lang/SecurityException;
    :goto_1
    return-void
.end method

.method private reset()V
    .locals 2

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/WfcLocationDetector;->mLoc:Landroid/location/Location;

    .line 228
    iput-object v0, p0, Lcom/sec/epdg/WfcLocationDetector;->mDetectedCountryCode:Ljava/lang/String;

    .line 229
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/epdg/WfcLocationDetector;->mCountryDetectedTime:J

    .line 230
    sget-object v0, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;->IDLE:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;

    iput-object v0, p0, Lcom/sec/epdg/WfcLocationDetector;->mDetectorState:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;

    .line 231
    sget-object v0, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;->NONE:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    iput-object v0, p0, Lcom/sec/epdg/WfcLocationDetector;->mDetectorResult:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    .line 233
    const-string v0, "LocDetector"

    const-string v1, "Reset()..."

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method private stopLocationUpdate()V
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/sec/epdg/WfcLocationDetector;->mLocationLooper:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/WfcLocationDetector;->mLocationLooper:Landroid/os/HandlerThread;

    .line 245
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/WfcLocationDetector;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/sec/epdg/WfcLocationDetector;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "se":Ljava/lang/SecurityException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location access denied, which should not be happening: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocDetector"

    invoke-static {v2, v1}, Lcom/sec/epdg/Logger/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .end local v0    # "se":Ljava/lang/SecurityException;
    :goto_0
    return-void
.end method


# virtual methods
.method public deregisterDetectorListener(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcom/sec/epdg/WfcLocationDetector;->mLocDetectorListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    return-void
.end method

.method public getDetectedCountryCode()Ljava/lang/String;
    .locals 4

    .line 213
    iget-object v0, p0, Lcom/sec/epdg/WfcLocationDetector;->mDetectedCountryCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/epdg/WfcLocationDetector;->mCountryDetectedTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/sec/epdg/WfcLocationDetector;->mDetectedCountryCode:Ljava/lang/String;

    return-object v0

    .line 217
    :cond_0
    const-string v0, "LocDetector"

    const-string v1, "Detected country code was stale, need to detect new country."

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-direct {p0}, Lcom/sec/epdg/WfcLocationDetector;->reset()V

    .line 220
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerDetectorListener(Ljava/lang/String;Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener;

    .line 196
    iget-object v0, p0, Lcom/sec/epdg/WfcLocationDetector;->mLocDetectorListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    if-eqz p2, :cond_0

    .line 199
    iget-object v0, p0, Lcom/sec/epdg/WfcLocationDetector;->mDetectorState:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;

    iget-object v1, p0, Lcom/sec/epdg/WfcLocationDetector;->mDetectorResult:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    invoke-interface {p2, v0, v1}, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener;->onDetectorStatusChanged(Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;)V

    .line 201
    :cond_0
    return-void
.end method

.method public startLocatingTask(Ljava/lang/String;)V
    .locals 6
    .param p1, "ssid"    # Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lcom/sec/epdg/WfcLocationDetector;->mDetectorState:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;

    sget-object v1, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;->IDLE:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;

    const-string v2, "LocDetector"

    if-eq v0, v1, :cond_0

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startLocationTask() ignored! already running: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/WfcLocationDetector;->mDetectorState:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void

    .line 183
    :cond_0
    sget-object v0, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;->RUNNING:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;

    sget-object v1, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;->NONE:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/WfcLocationDetector;->notifyDetectorState(Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;)V

    .line 184
    iget-object v0, p0, Lcom/sec/epdg/WfcLocationDetector;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/sec/epdg/WfcLocationDetector;->mLocatingAddressTask:Ljava/lang/Runnable;

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 186
    const-string v0, "Start the location detector task"

    invoke-static {v2, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method
