.class public Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProviderHelper;
.super Ljava/lang/Object;
.source "SimMobilityContentProviderHelper.java"


# static fields
.field public static SIM_MOBILITY_URI:Landroid/net/Uri; = null

.field public static SIM_MOBILITY_VERSION_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "SimMobilityContentProviderHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-string v0, "content://simmobilitysettings/simmobility/simmobilitytable"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProviderHelper;->SIM_MOBILITY_URI:Landroid/net/Uri;

    .line 17
    const-string v0, "content://simmobilitysettings/simmobility/simmobilitytableversion"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProviderHelper;->SIM_MOBILITY_VERSION_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersion(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 58
    .local v6, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProviderHelper;->SIM_MOBILITY_VERSION_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 59
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 61
    .local v1, "version":I
    if-eqz v0, :cond_1

    .line 62
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    const-string v2, "simmobilityversion"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    goto :goto_1

    .line 69
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 66
    :catch_0
    move-exception v2

    .line 67
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .end local v2    # "e":Ljava/lang/RuntimeException;
    if-eqz v0, :cond_2

    .line 70
    goto :goto_2

    .line 69
    :goto_0
    if-eqz v0, :cond_0

    .line 70
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 71
    const/4 v0, 0x0

    .line 73
    :cond_0
    throw v2

    .line 69
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 70
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 71
    const/4 v0, 0x0

    .line 74
    :cond_2
    return v1
.end method

.method private static isFunctionEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mnoName"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 34
    .local v6, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProviderHelper;->SIM_MOBILITY_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mnoname = \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 35
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    .line 37
    .local v1, "enabled":Z
    if-eqz v0, :cond_1

    .line 38
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .local v2, "enable":I
    if-nez v2, :cond_1

    .line 41
    const/4 v1, 0x0

    goto :goto_1

    .line 48
    .end local v2    # "enable":I
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 45
    :catch_0
    move-exception v2

    .line 46
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .end local v2    # "e":Ljava/lang/RuntimeException;
    if-eqz v0, :cond_2

    .line 49
    goto :goto_2

    .line 48
    :goto_0
    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 50
    const/4 v0, 0x0

    .line 52
    :cond_0
    throw v2

    .line 48
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 49
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 50
    const/4 v0, 0x0

    .line 53
    :cond_2
    return v1
.end method

.method public static isSimMobilityVideoEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mnoName"    # Ljava/lang/String;

    .line 27
    const-string v0, "video_enable"

    invoke-static {p0, p1, v0}, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProviderHelper;->isFunctionEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 28
    .local v0, "videoEnabled":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProviderHelper;->getVersion(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isSimMobilityVideoEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimMobilityContentProviderHelper"

    invoke-static {v2, v1}, Lcom/sec/epdg/Logger/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return v0
.end method

.method public static isSimMobilityVoiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mnoName"    # Ljava/lang/String;

    .line 21
    const-string v0, "voice_enable"

    invoke-static {p0, p1, v0}, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProviderHelper;->isFunctionEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 22
    .local v0, "voiceEnabled":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProviderHelper;->getVersion(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isSimMobilityVoiceEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimMobilityContentProviderHelper"

    invoke-static {v2, v1}, Lcom/sec/epdg/Logger/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return v0
.end method
