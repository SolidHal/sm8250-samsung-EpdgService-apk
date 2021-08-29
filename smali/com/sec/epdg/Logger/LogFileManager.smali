.class Lcom/sec/epdg/Logger/LogFileManager;
.super Ljava/lang/Object;
.source "LogFileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/Logger/LogFileManager$MeteredWriter;
    }
.end annotation


# instance fields
.field private mFullPath:Ljava/lang/String;

.field private mMaxCount:I

.field private mMaxSize:I

.field private mMeter:Lcom/sec/epdg/Logger/LogFileManager$MeteredWriter;

.field private mPaths:[Ljava/nio/file/Path;


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "maxSize"    # I
    .param p3, "maxCount"    # I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-ltz p2, :cond_0

    const/4 v0, 0x1

    if-lt p3, v0, :cond_0

    .line 27
    iput-object p1, p0, Lcom/sec/epdg/Logger/LogFileManager;->mFullPath:Ljava/lang/String;

    .line 28
    iput p2, p0, Lcom/sec/epdg/Logger/LogFileManager;->mMaxSize:I

    .line 29
    iput p3, p0, Lcom/sec/epdg/Logger/LogFileManager;->mMaxCount:I

    .line 30
    return-void

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private open(Ljava/nio/file/Path;)V
    .locals 6
    .param p1, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    const-wide/16 v0, 0x0

    .line 47
    .local v0, "len":J
    sget-object v2, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    .line 48
    .local v2, "openOption":Ljava/nio/file/OpenOption;
    const/4 v3, 0x0

    new-array v4, v3, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v4}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    invoke-static {p1}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v0

    .line 50
    sget-object v2, Ljava/nio/file/StandardOpenOption;->APPEND:Ljava/nio/file/StandardOpenOption;

    goto :goto_0

    .line 52
    :cond_0
    invoke-interface {p1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v4

    new-array v5, v3, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v4, v5}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 53
    new-array v4, v3, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p1, v4}, Ljava/nio/file/Files;->createFile(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 56
    :goto_0
    new-instance v4, Lcom/sec/epdg/Logger/LogFileManager$MeteredWriter;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/nio/file/OpenOption;

    aput-object v2, v5, v3

    invoke-static {p1, v5}, Ljava/nio/file/Files;->newBufferedWriter(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/BufferedWriter;

    move-result-object v3

    invoke-direct {v4, v3, v0, v1}, Lcom/sec/epdg/Logger/LogFileManager$MeteredWriter;-><init>(Ljava/io/Writer;J)V

    iput-object v4, p0, Lcom/sec/epdg/Logger/LogFileManager;->mMeter:Lcom/sec/epdg/Logger/LogFileManager$MeteredWriter;

    .line 57
    return-void
.end method

.method private declared-synchronized rotate()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 60
    :try_start_0
    iget v0, p0, Lcom/sec/epdg/Logger/LogFileManager;->mMaxCount:I

    add-int/lit8 v0, v0, -0x2

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_1

    .line 61
    iget-object v2, p0, Lcom/sec/epdg/Logger/LogFileManager;->mPaths:[Ljava/nio/file/Path;

    aget-object v2, v2, v0

    new-array v3, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/sec/epdg/Logger/LogFileManager;->mPaths:[Ljava/nio/file/Path;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/sec/epdg/Logger/LogFileManager;->mPaths:[Ljava/nio/file/Path;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/nio/file/CopyOption;

    sget-object v5, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 60
    .end local p0    # "this":Lcom/sec/epdg/Logger/LogFileManager;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 66
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/Logger/LogFileManager;->mPaths:[Ljava/nio/file/Path;

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/sec/epdg/Logger/LogFileManager;->open(Ljava/nio/file/Path;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method init()V
    .locals 7

    .line 33
    iget v0, p0, Lcom/sec/epdg/Logger/LogFileManager;->mMaxCount:I

    new-array v0, v0, [Ljava/nio/file/Path;

    iput-object v0, p0, Lcom/sec/epdg/Logger/LogFileManager;->mPaths:[Ljava/nio/file/Path;

    .line 34
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sec/epdg/Logger/LogFileManager;->mMaxCount:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/sec/epdg/Logger/LogFileManager;->mPaths:[Ljava/nio/file/Path;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/epdg/Logger/LogFileManager;->mFullPath:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "%s.%d"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v3, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    aput-object v2, v1, v0

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    .end local v0    # "i":I
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/Logger/LogFileManager;->mPaths:[Ljava/nio/file/Path;

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/sec/epdg/Logger/LogFileManager;->open(Ljava/nio/file/Path;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 43
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method declared-synchronized write(Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;

    monitor-enter p0

    .line 70
    const/4 v0, 0x1

    .line 73
    .local v0, "success":Z
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/epdg/Logger/LogFileManager;->mMeter:Lcom/sec/epdg/Logger/LogFileManager$MeteredWriter;

    if-nez v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/sec/epdg/Logger/LogFileManager;->mPaths:[Ljava/nio/file/Path;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/sec/epdg/Logger/LogFileManager;->open(Ljava/nio/file/Path;)V

    .line 77
    .end local p0    # "this":Lcom/sec/epdg/Logger/LogFileManager;
    :cond_0
    iget-object v2, p0, Lcom/sec/epdg/Logger/LogFileManager;->mMeter:Lcom/sec/epdg/Logger/LogFileManager$MeteredWriter;

    invoke-virtual {v2, p1}, Lcom/sec/epdg/Logger/LogFileManager$MeteredWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    goto :goto_0

    .line 69
    .end local v0    # "success":Z
    .end local p1    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 78
    .restart local v0    # "success":Z
    .restart local p1    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 79
    .local v2, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    .line 83
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    if-nez v0, :cond_1

    .line 84
    :try_start_1
    iget-object v2, p0, Lcom/sec/epdg/Logger/LogFileManager;->mPaths:[Ljava/nio/file/Path;

    aget-object v1, v2, v1

    invoke-direct {p0, v1}, Lcom/sec/epdg/Logger/LogFileManager;->open(Ljava/nio/file/Path;)V

    .line 85
    iget-object v1, p0, Lcom/sec/epdg/Logger/LogFileManager;->mMeter:Lcom/sec/epdg/Logger/LogFileManager$MeteredWriter;

    invoke-virtual {v1, p1}, Lcom/sec/epdg/Logger/LogFileManager$MeteredWriter;->write(Ljava/lang/String;)V

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/sec/epdg/Logger/LogFileManager;->mMeter:Lcom/sec/epdg/Logger/LogFileManager$MeteredWriter;

    iget-wide v1, v1, Lcom/sec/epdg/Logger/LogFileManager$MeteredWriter;->written:J

    iget v3, p0, Lcom/sec/epdg/Logger/LogFileManager;->mMaxSize:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 89
    invoke-direct {p0}, Lcom/sec/epdg/Logger/LogFileManager;->rotate()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :cond_2
    goto :goto_1

    .line 91
    :catch_1
    move-exception v1

    .line 92
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    monitor-exit p0

    return-void

    .line 69
    .end local v0    # "success":Z
    .end local p1    # "msg":Ljava/lang/String;
    :goto_2
    monitor-exit p0

    throw p1
.end method
