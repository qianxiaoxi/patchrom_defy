.class public Landroid/media/AudioService$VolumeStreamState;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VolumeStreamState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    }
.end annotation


# instance fields
.field private mDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mIndex:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexMax:I

.field private final mLastAudibleIndex:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastAudibleVolumeIndexSettingName:Ljava/lang/String;

.field private final mStreamType:I

.field private mVolumeIndexSettingName:Ljava/lang/String;

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter "settingName"
    .parameter "streamType"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x4

    const/high16 v1, 0x3f40

    .line 2490
    iput-object p1, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2484
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2486
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2492
    iput-object p2, p0, Landroid/media/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    .line 2493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_last_audible"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleVolumeIndexSettingName:Ljava/lang/String;

    .line 2495
    iput p3, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    .line 2496
    #getter for: Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I
    invoke-static {p1}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)[I

    move-result-object v0

    aget v0, v0, p3

    iput v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    .line 2497
    const/4 v0, 0x0

    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-static {p3, v0, v1}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    .line 2498
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    .line 2500
    invoke-virtual {p0}, Landroid/media/AudioService$VolumeStreamState;->readSettings()V

    .line 2502
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    .line 2503
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Ljava/lang/String;ILandroid/media/AudioService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 2478
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService$VolumeStreamState;-><init>(Landroid/media/AudioService;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1200(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2478
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2478
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4300(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2478
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$4400(Landroid/media/AudioService$VolumeStreamState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2478
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    return v0
.end method

.method static synthetic access$5400(Landroid/media/AudioService$VolumeStreamState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2478
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    return v0
.end method

.method static synthetic access$600(Landroid/media/AudioService$VolumeStreamState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2478
    invoke-direct {p0}, Landroid/media/AudioService$VolumeStreamState;->muteCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/media/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2478
    invoke-direct {p0, p1}, Landroid/media/AudioService$VolumeStreamState;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "pw"

    .prologue
    .line 2864
    const-string v3, "   Current: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2865
    iget-object v3, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 2866
    .local v2, set:Ljava/util/Set;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2867
    .local v1, i:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2868
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2869
    .local v0, entry:Ljava/util/Map$Entry;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0xa

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 2872
    .end local v0           #entry:Ljava/util/Map$Entry;
    :cond_0
    const-string v3, "\n   Last audible: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2873
    iget-object v3, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 2874
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2875
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2876
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2877
    .restart local v0       #entry:Ljava/util/Map$Entry;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0xa

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 2880
    .end local v0           #entry:Ljava/util/Map$Entry;
    :cond_1
    return-void
.end method

.method private getDeathHandler(Landroid/os/IBinder;Z)Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .locals 6
    .parameter "cb"
    .parameter "state"

    .prologue
    .line 2845
    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2846
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 2847
    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    .line 2848
    .local v0, handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    #getter for: Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mICallback:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$4500(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;)Landroid/os/IBinder;

    move-result-object v4

    if-ne p1, v4, :cond_0

    move-object v1, v0

    .line 2860
    .end local v0           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .local v1, handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :goto_1
    return-object v1

    .line 2846
    .end local v1           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .restart local v0       #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2854
    .end local v0           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :cond_1
    if-eqz p2, :cond_2

    .line 2855
    new-instance v0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    invoke-direct {v0, p0, p1}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;-><init>(Landroid/media/AudioService$VolumeStreamState;Landroid/os/IBinder;)V

    .restart local v0       #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :goto_2
    move-object v1, v0

    .line 2860
    .end local v0           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .restart local v1       #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    goto :goto_1

    .line 2857
    .end local v1           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :cond_2
    const-string v4, "AudioService"

    const-string/jumbo v5, "stream was not muted by this client"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2858
    const/4 v0, 0x0

    .restart local v0       #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    goto :goto_2
.end method

.method private getValidIndex(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 2730
    if-gez p1, :cond_1

    .line 2731
    const/4 p1, 0x0

    .line 2736
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 2732
    .restart local p1
    :cond_1
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    if-le p1, v0, :cond_0

    .line 2733
    iget p1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    goto :goto_0
.end method

.method private declared-synchronized muteCount()I
    .locals 4

    .prologue
    .line 2834
    monitor-enter p0

    const/4 v0, 0x0

    .line 2835
    .local v0, count:I
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2836
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2837
    iget-object v3, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    #getter for: Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$2100(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    add-int/2addr v0, v3

    .line 2836
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2839
    :cond_0
    monitor-exit p0

    return v0

    .line 2834
    .end local v1           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public adjustIndex(II)Z
    .locals 2
    .parameter "deltaIndex"
    .parameter "device"

    .prologue
    .line 2609
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v0

    add-int/2addr v0, p1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IIZ)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized adjustLastAudibleIndex(II)V
    .locals 1
    .parameter "deltaIndex"
    .parameter "device"

    .prologue
    .line 2685
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p2, v0}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Landroid/media/AudioService$VolumeStreamState;->setLastAudibleIndex(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2688
    monitor-exit p0

    return-void

    .line 2685
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized applyAllVolumes()V
    .locals 8

    .prologue
    const v7, 0x8000

    .line 2591
    monitor-enter p0

    :try_start_0
    iget v4, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    const v5, 0x8000

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    div-int/lit8 v5, v5, 0xa

    const v6, 0x8000

    invoke-static {v4, v5, v6}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    .line 2595
    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 2596
    .local v3, set:Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2597
    .local v2, i:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2598
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2599
    .local v1, entry:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2600
    .local v0, device:I
    if-eq v0, v7, :cond_0

    .line 2601
    iget v5, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    div-int/lit8 v4, v4, 0xa

    invoke-static {v5, v4, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2591
    .end local v0           #device:I
    .end local v1           #entry:Ljava/util/Map$Entry;
    .end local v2           #i:Ljava/util/Iterator;
    .end local v3           #set:Ljava/util/Set;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 2606
    .restart local v2       #i:Ljava/util/Iterator;
    .restart local v3       #set:Ljava/util/Set;
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public applyDeviceVolume(I)V
    .locals 2
    .parameter "device"

    .prologue
    .line 2583
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1, p1}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    .line 2586
    return-void
.end method

.method public getAllIndexes(Z)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .parameter "lastAudible"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2696
    if-eqz p1, :cond_0

    .line 2697
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2699
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_0
.end method

.method public declared-synchronized getIndex(IZ)I
    .locals 3
    .parameter "device"
    .parameter "lastAudible"

    .prologue
    .line 2651
    monitor-enter p0

    if-eqz p2, :cond_1

    .line 2652
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2656
    .local v1, indexes:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2657
    .local v0, index:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 2659
    const v2, 0x8000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #index:Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 2661
    .restart local v0       #index:Ljava/lang/Integer;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    monitor-exit p0

    return v2

    .line 2654
    .end local v0           #index:Ljava/lang/Integer;
    .end local v1           #indexes:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v1       #indexes:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 2651
    .end local v1           #indexes:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getMaxIndex()I
    .locals 1

    .prologue
    .line 2691
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    return v0
.end method

.method public getSettingNameForDevice(ZI)Ljava/lang/String;
    .locals 4
    .parameter "lastAudible"
    .parameter "device"

    .prologue
    .line 2506
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleVolumeIndexSettingName:Ljava/lang/String;

    .line 2509
    .local v0, name:Ljava/lang/String;
    :goto_0
    invoke-static {p2}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v1

    .line 2510
    .local v1, suffix:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2513
    .end local v0           #name:Ljava/lang/String;
    :goto_1
    return-object v0

    .line 2506
    .end local v1           #suffix:Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    goto :goto_0

    .line 2513
    .restart local v0       #name:Ljava/lang/String;
    .restart local v1       #suffix:Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getStreamType()I
    .locals 1

    .prologue
    .line 2726
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    return v0
.end method

.method public declared-synchronized mute(Landroid/os/IBinder;Z)V
    .locals 4
    .parameter "cb"
    .parameter "state"

    .prologue
    .line 2717
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService$VolumeStreamState;->getDeathHandler(Landroid/os/IBinder;Z)Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    move-result-object v0

    .line 2718
    .local v0, handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    if-nez v0, :cond_0

    .line 2719
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get client death handler for stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2723
    :goto_0
    monitor-exit p0

    return-void

    .line 2722
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mute(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2717
    .end local v0           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized readSettings()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    .line 2517
    monitor-enter p0

    const v12, 0xffff

    .line 2519
    .local v12, remainingDevices:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-eqz v12, :cond_9

    .line 2520
    shl-int v4, v13, v8

    .line 2521
    .local v4, device:I
    and-int v0, v4, v12

    if-nez v0, :cond_1

    .line 2519
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2524
    :cond_1
    xor-int/lit8 v0, v4, -0x1

    and-int/2addr v12, v0

    .line 2527
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v4}, Landroid/media/AudioService$VolumeStreamState;->getSettingNameForDevice(ZI)Ljava/lang/String;

    move-result-object v11

    .line 2529
    .local v11, name:Ljava/lang/String;
    sget-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    aget v7, v0, v1

    .line 2530
    .local v7, defaultIndex:I
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v11, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 2531
    .local v9, index:I
    const/4 v0, -0x1

    if-eq v9, v0, :cond_0

    .line 2536
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v4}, Landroid/media/AudioService$VolumeStreamState;->getSettingNameForDevice(ZI)Ljava/lang/String;

    move-result-object v11

    .line 2539
    if-lez v9, :cond_8

    move v7, v9

    .line 2541
    :goto_2
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v11, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 2546
    .local v10, lastAudibleIndex:I
    if-nez v10, :cond_4

    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mVoiceCapable:Z
    invoke-static {v0}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v0}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)[I

    move-result-object v0

    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    aget v0, v0, v1

    if-eq v0, v14, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v0}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)[I

    move-result-object v0

    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    aget v0, v0, v1

    if-ne v0, v13, :cond_4

    .line 2550
    :cond_3
    sget-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    aget v10, v0, v1

    .line 2552
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v0}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x2

    const/16 v6, 0x1f4

    move-object v5, p0

    #calls: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2560
    :cond_4
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    mul-int/lit8 v2, v10, 0xa

    invoke-direct {p0, v2}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2564
    if-nez v9, :cond_7

    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mRingerMode:I
    invoke-static {v0}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)I

    move-result v0

    if-ne v0, v14, :cond_7

    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mVoiceCapable:Z
    invoke-static {v0}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v0}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)[I

    move-result-object v0

    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    aget v0, v0, v1

    if-eq v0, v14, :cond_6

    :cond_5
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v0}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)[I

    move-result-object v0

    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    aget v0, v0, v1

    if-ne v0, v13, :cond_7

    .line 2568
    :cond_6
    move v9, v10

    .line 2570
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v0}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v6, 0x1f4

    move-object v5, p0

    #calls: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2578
    :cond_7
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    mul-int/lit8 v2, v9, 0xa

    invoke-direct {p0, v2}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 2517
    .end local v7           #defaultIndex:I
    .end local v9           #index:I
    .end local v10           #lastAudibleIndex:I
    .end local v11           #name:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2539
    .restart local v7       #defaultIndex:I
    .restart local v9       #index:I
    .restart local v11       #name:Ljava/lang/String;
    :cond_8
    :try_start_1
    sget-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    aget v7, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 2580
    .end local v4           #device:I
    .end local v7           #defaultIndex:I
    .end local v9           #index:I
    .end local v11           #name:Ljava/lang/String;
    :cond_9
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setAllIndexes(Landroid/media/AudioService$VolumeStreamState;Z)V
    .locals 9
    .parameter "srcStream"
    .parameter "lastAudible"

    .prologue
    .line 2704
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/media/AudioService$VolumeStreamState;->getAllIndexes(Z)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    .line 2705
    .local v4, indexes:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 2706
    .local v5, set:Ljava/util/Set;
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2707
    .local v2, i:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2708
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2709
    .local v1, entry:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2710
    .local v0, device:I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2711
    .local v3, index:I
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    invoke-virtual {p1}, Landroid/media/AudioService$VolumeStreamState;->getStreamType()I

    move-result v7

    iget v8, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    #calls: Landroid/media/AudioService;->rescaleIndex(III)I
    invoke-static {v6, v3, v7, v8}, Landroid/media/AudioService;->access$4100(Landroid/media/AudioService;III)I

    move-result v3

    .line 2712
    invoke-virtual {p0, v3, v0, p2}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IIZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2704
    .end local v0           #device:I
    .end local v1           #entry:Ljava/util/Map$Entry;
    .end local v2           #i:Ljava/util/Iterator;
    .end local v3           #index:I
    .end local v4           #indexes:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v5           #set:Ljava/util/Set;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 2714
    .restart local v2       #i:Ljava/util/Iterator;
    .restart local v4       #indexes:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v5       #set:Ljava/util/Set;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setIndex(IIZ)Z
    .locals 10
    .parameter "index"
    .parameter "device"
    .parameter "lastAudible"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2616
    monitor-enter p0

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0, p2, v7}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v2

    .line 2617
    .local v2, oldIndex:I
    invoke-direct {p0, p1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result p1

    .line 2618
    iget-object v7, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, p1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2620
    if-eq v2, p1, :cond_3

    .line 2621
    if-eqz p3, :cond_0

    .line 2622
    iget-object v7, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2627
    :cond_0
    iget-object v7, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget v8, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    #calls: Landroid/media/AudioService;->getDeviceForStream(I)I
    invoke-static {v7, v8}, Landroid/media/AudioService;->access$4000(Landroid/media/AudioService;I)I

    move-result v7

    if-ne p2, v7, :cond_2

    move v0, v5

    .line 2628
    .local v0, currentDevice:Z
    :goto_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 2629
    .local v1, numStreamTypes:I
    add-int/lit8 v4, v1, -0x1

    .local v4, streamType:I
    :goto_1
    if-ltz v4, :cond_4

    .line 2630
    iget v6, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v4, v6, :cond_1

    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v6}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)[I

    move-result-object v6

    aget v6, v6, v4

    iget v7, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v6, v7, :cond_1

    .line 2632
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget v7, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    #calls: Landroid/media/AudioService;->rescaleIndex(III)I
    invoke-static {v6, p1, v7, v4}, Landroid/media/AudioService;->access$4100(Landroid/media/AudioService;III)I

    move-result v3

    .line 2633
    .local v3, scaledIndex:I
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v6}, Landroid/media/AudioService;->access$4200(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v6, v3, p2, p3}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IIZ)Z

    .line 2636
    if-eqz v0, :cond_1

    .line 2637
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v6}, Landroid/media/AudioService;->access$4200(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v6

    aget-object v6, v6, v4

    iget-object v7, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->getDeviceForStream(I)I
    invoke-static {v7, v4}, Landroid/media/AudioService;->access$4000(Landroid/media/AudioService;I)I

    move-result v7

    invoke-virtual {v6, v3, v7, p3}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IIZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2629
    .end local v3           #scaledIndex:I
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .end local v0           #currentDevice:Z
    .end local v1           #numStreamTypes:I
    .end local v4           #streamType:I
    :cond_2
    move v0, v6

    .line 2627
    goto :goto_0

    :cond_3
    move v5, v6

    .line 2645
    :cond_4
    monitor-exit p0

    return v5

    .line 2616
    .end local v2           #oldIndex:I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setLastAudibleIndex(II)V
    .locals 7
    .parameter "index"
    .parameter "device"

    .prologue
    .line 2668
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget v5, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    #calls: Landroid/media/AudioService;->getDeviceForStream(I)I
    invoke-static {v4, v5}, Landroid/media/AudioService;->access$4000(Landroid/media/AudioService;I)I

    move-result v4

    if-ne p2, v4, :cond_1

    const/4 v0, 0x1

    .line 2669
    .local v0, currentDevice:Z
    :goto_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 2670
    .local v1, numStreamTypes:I
    add-int/lit8 v3, v1, -0x1

    .local v3, streamType:I
    :goto_1
    if-ltz v3, :cond_2

    .line 2671
    iget v4, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v3, v4, :cond_0

    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v4}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)[I

    move-result-object v4

    aget v4, v4, v3

    iget v5, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v4, v5, :cond_0

    .line 2673
    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget v5, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    #calls: Landroid/media/AudioService;->rescaleIndex(III)I
    invoke-static {v4, p1, v5, v3}, Landroid/media/AudioService;->access$4100(Landroid/media/AudioService;III)I

    move-result v2

    .line 2674
    .local v2, scaledIndex:I
    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v4}, Landroid/media/AudioService;->access$4200(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4, v2, p2}, Landroid/media/AudioService$VolumeStreamState;->setLastAudibleIndex(II)V

    .line 2675
    if-eqz v0, :cond_0

    .line 2676
    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v4}, Landroid/media/AudioService;->access$4200(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v4

    aget-object v4, v4, v3

    iget-object v5, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->getDeviceForStream(I)I
    invoke-static {v5, v3}, Landroid/media/AudioService;->access$4000(Landroid/media/AudioService;I)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Landroid/media/AudioService$VolumeStreamState;->setLastAudibleIndex(II)V

    .line 2670
    .end local v2           #scaledIndex:I
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2668
    .end local v0           #currentDevice:Z
    .end local v1           #numStreamTypes:I
    .end local v3           #streamType:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2681
    .restart local v0       #currentDevice:Z
    .restart local v1       #numStreamTypes:I
    .restart local v3       #streamType:I
    :cond_2
    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, p1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2682
    monitor-exit p0

    return-void

    .line 2668
    .end local v0           #currentDevice:Z
    .end local v1           #numStreamTypes:I
    .end local v3           #streamType:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
