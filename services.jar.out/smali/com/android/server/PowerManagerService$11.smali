.class Lcom/android/server/PowerManagerService$11;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PowerManagerService;->reboot(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;

.field final synthetic val$finalReason:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3089
    iput-object p1, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    iput-object p2, p0, Lcom/android/server/PowerManagerService$11;->val$finalReason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3091
    monitor-enter p0

    .line 3092
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->getUiContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$8200(Lcom/android/server/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/PowerManagerService$11;->val$finalReason:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 3093
    monitor-exit p0

    .line 3095
    return-void

    .line 3093
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
