.class abstract Lorg/junit/runner/notification/RunNotifier$SafeNotifier;
.super Ljava/lang/Object;
.source "RunNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/runner/notification/RunNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SafeNotifier"
.end annotation


# instance fields
.field private final fCurrentListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/junit/runner/notification/RunListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/junit/runner/notification/RunNotifier;


# direct methods
.method constructor <init>(Lorg/junit/runner/notification/RunNotifier;)V
    .locals 1

    .prologue
    .line 46
    invoke-static {p1}, Lorg/junit/runner/notification/RunNotifier;->access$000(Lorg/junit/runner/notification/RunNotifier;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/junit/runner/notification/RunNotifier$SafeNotifier;-><init>(Lorg/junit/runner/notification/RunNotifier;Ljava/util/List;)V

    .line 47
    return-void
.end method

.method constructor <init>(Lorg/junit/runner/notification/RunNotifier;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/junit/runner/notification/RunListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, "currentListeners":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runner/notification/RunListener;>;"
    iput-object p1, p0, Lorg/junit/runner/notification/RunNotifier$SafeNotifier;->this$0:Lorg/junit/runner/notification/RunNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p2, p0, Lorg/junit/runner/notification/RunNotifier$SafeNotifier;->fCurrentListeners:Ljava/util/List;

    .line 51
    return-void
.end method


# virtual methods
.method protected abstract notifyListener(Lorg/junit/runner/notification/RunListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method run()V
    .locals 8

    .prologue
    .line 54
    iget-object v5, p0, Lorg/junit/runner/notification/RunNotifier$SafeNotifier;->this$0:Lorg/junit/runner/notification/RunNotifier;

    invoke-static {v5}, Lorg/junit/runner/notification/RunNotifier;->access$000(Lorg/junit/runner/notification/RunNotifier;)Ljava/util/List;

    move-result-object v6

    monitor-enter v6

    .line 55
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v4, "safeListeners":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runner/notification/RunListener;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v2, "failures":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runner/notification/Failure;>;"
    iget-object v5, p0, Lorg/junit/runner/notification/RunNotifier$SafeNotifier;->fCurrentListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 58
    .local v0, "all":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/junit/runner/notification/RunListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    .line 60
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/junit/runner/notification/RunListener;

    .line 61
    .local v3, "listener":Lorg/junit/runner/notification/RunListener;
    invoke-virtual {p0, v3}, Lorg/junit/runner/notification/RunNotifier$SafeNotifier;->notifyListener(Lorg/junit/runner/notification/RunListener;)V

    .line 62
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 63
    .end local v3    # "listener":Lorg/junit/runner/notification/RunListener;
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Lorg/junit/runner/notification/Failure;

    sget-object v7, Lorg/junit/runner/Description;->TEST_MECHANISM:Lorg/junit/runner/Description;

    invoke-direct {v5, v7, v1}, Lorg/junit/runner/notification/Failure;-><init>(Lorg/junit/runner/Description;Ljava/lang/Throwable;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    .end local v0    # "all":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/junit/runner/notification/RunListener;>;"
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "failures":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runner/notification/Failure;>;"
    .end local v4    # "safeListeners":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runner/notification/RunListener;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 67
    .restart local v0    # "all":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/junit/runner/notification/RunListener;>;"
    .restart local v2    # "failures":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runner/notification/Failure;>;"
    .restart local v4    # "safeListeners":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runner/notification/RunListener;>;"
    :cond_0
    :try_start_3
    iget-object v5, p0, Lorg/junit/runner/notification/RunNotifier$SafeNotifier;->this$0:Lorg/junit/runner/notification/RunNotifier;

    invoke-static {v5, v4, v2}, Lorg/junit/runner/notification/RunNotifier;->access$100(Lorg/junit/runner/notification/RunNotifier;Ljava/util/List;Ljava/util/List;)V

    .line 68
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    return-void
.end method
