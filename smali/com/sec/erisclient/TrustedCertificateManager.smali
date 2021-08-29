.class public Lcom/sec/erisclient/TrustedCertificateManager;
.super Ljava/lang/Object;
.source "TrustedCertificateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/erisclient/TrustedCertificateManager$Singleton;,
        Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCACerts:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyStores:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/security/KeyStore;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaded:Z

.field private final mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private volatile mReload:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/sec/erisclient/TrustedCertificateManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/erisclient/TrustedCertificateManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 17
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mCACerts:Ljava/util/Hashtable;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mKeyStores:Ljava/util/ArrayList;

    .line 46
    const-string v0, "AndroidCAStore"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    .line 51
    .local v2, "name":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 52
    .local v3, "store":Ljava/security/KeyStore;
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 53
    iget-object v4, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mKeyStores:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_1

    .line 55
    .end local v3    # "store":Ljava/security/KeyStore;
    :catch_0
    move-exception v3

    .line 57
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/sec/erisclient/TrustedCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to load KeyStore: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/erisclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/erisclient/TrustedCertificateManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/erisclient/TrustedCertificateManager$1;

    .line 13
    invoke-direct {p0}, Lcom/sec/erisclient/TrustedCertificateManager;-><init>()V

    return-void
.end method

.method private fetchCertificates(Ljava/util/Hashtable;Ljava/security/KeyStore;)V
    .locals 4
    .param p2, "store"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/security/KeyStore;",
            ")V"
        }
    .end annotation

    .line 142
    .local p1, "certs":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    :try_start_0
    invoke-virtual {p2}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v0

    .line 143
    .local v0, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 147
    .local v1, "alias":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    .line 148
    .local v2, "cert":Ljava/security/cert/Certificate;
    if-eqz v2, :cond_0

    instance-of v3, v2, Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_0

    .line 150
    move-object v3, v2

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {p1, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v1    # "alias":Ljava/lang/String;
    .end local v2    # "cert":Ljava/security/cert/Certificate;
    :cond_0
    goto :goto_0

    .line 157
    .end local v0    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_1
    goto :goto_1

    .line 154
    :catch_0
    move-exception v0

    .line 156
    .local v0, "ex":Ljava/security/KeyStoreException;
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V

    .line 158
    .end local v0    # "ex":Ljava/security/KeyStoreException;
    :goto_1
    return-void
.end method

.method public static getInstance()Lcom/sec/erisclient/TrustedCertificateManager;
    .locals 1

    .line 76
    sget-object v0, Lcom/sec/erisclient/TrustedCertificateManager$Singleton;->mInstance:Lcom/sec/erisclient/TrustedCertificateManager;

    return-object v0
.end method

.method private loadCertificates()V
    .locals 3

    .line 122
    sget-object v0, Lcom/sec/erisclient/TrustedCertificateManager;->TAG:Ljava/lang/String;

    const-string v1, "Load cached CA certificates"

    invoke-static {v0, v1}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 124
    .local v0, "certs":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    iget-object v1, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mKeyStores:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/KeyStore;

    .line 126
    .local v2, "store":Ljava/security/KeyStore;
    invoke-direct {p0, v0, v2}, Lcom/sec/erisclient/TrustedCertificateManager;->fetchCertificates(Ljava/util/Hashtable;Ljava/security/KeyStore;)V

    .line 127
    .end local v2    # "store":Ljava/security/KeyStore;
    goto :goto_0

    .line 128
    :cond_0
    iput-object v0, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mCACerts:Ljava/util/Hashtable;

    .line 129
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mLoaded:Z

    .line 130
    sget-object v1, Lcom/sec/erisclient/TrustedCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "Cached CA certificates loaded"

    invoke-static {v1, v2}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method


# virtual methods
.method public getAllCACertificates()Ljava/util/Hashtable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 206
    iget-object v0, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mCACerts:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 207
    .local v0, "certs":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    iget-object v1, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 208
    return-object v0
.end method

.method public getCACertificateFromAlias(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;

    .line 167
    const/4 v0, 0x0

    .line 169
    .local v0, "certificate":Ljava/security/cert/X509Certificate;
    iget-object v1, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->tryLock()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mCACerts:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 172
    iget-object v1, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_2

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mKeyStores:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/KeyStore;

    .line 181
    .local v2, "store":Ljava/security/KeyStore;
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v3

    .line 182
    .local v3, "cert":Ljava/security/cert/Certificate;
    if-eqz v3, :cond_1

    instance-of v4, v3, Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_1

    .line 184
    move-object v4, v3

    check-cast v4, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 185
    goto :goto_2

    .line 191
    .end local v3    # "cert":Ljava/security/cert/Certificate;
    :cond_1
    goto :goto_1

    .line 188
    :catch_0
    move-exception v3

    .line 190
    .local v3, "e":Ljava/security/KeyStoreException;
    invoke-virtual {v3}, Ljava/security/KeyStoreException;->printStackTrace()V

    .line 192
    .end local v2    # "store":Ljava/security/KeyStore;
    .end local v3    # "e":Ljava/security/KeyStoreException;
    :goto_1
    goto :goto_0

    .line 194
    :cond_2
    :goto_2
    return-object v0
.end method

.method public getCACertificates(Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;)Ljava/util/Hashtable;
    .locals 5
    .param p1, "source"    # Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;",
            ")",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 218
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 219
    .local v0, "certs":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    iget-object v1, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 220
    iget-object v1, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mCACerts:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 222
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 223
    .local v3, "alias":Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;->access$100(Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 225
    iget-object v4, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mCACerts:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    .end local v3    # "alias":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 228
    :cond_1
    iget-object v1, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 229
    return-object v0
.end method

.method public load()Lcom/sec/erisclient/TrustedCertificateManager;
    .locals 2

    .line 99
    sget-object v0, Lcom/sec/erisclient/TrustedCertificateManager;->TAG:Ljava/lang/String;

    const-string v1, "Ensure cached CA certificates are loaded"

    invoke-static {v0, v1}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 103
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mLoaded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mReload:Z

    if-eqz v0, :cond_1

    .line 105
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mReload:Z

    .line 106
    invoke-direct {p0}, Lcom/sec/erisclient/TrustedCertificateManager;->loadCertificates()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 112
    nop

    .line 113
    return-object p0

    .line 111
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 112
    throw v0
.end method

.method public reset()Lcom/sec/erisclient/TrustedCertificateManager;
    .locals 2

    .line 86
    sget-object v0, Lcom/sec/erisclient/TrustedCertificateManager;->TAG:Ljava/lang/String;

    const-string v1, "Force reload of cached CA certificates on next load"

    invoke-static {v0, v1}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mReload:Z

    .line 88
    return-object p0
.end method
