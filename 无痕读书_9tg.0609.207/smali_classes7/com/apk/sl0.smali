.class public Lcom/apk/sl0;
.super Ljava/lang/Object;
.source "EventBusBuilder.java"


# static fields
.field public static final catch:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public break:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/hm0;",
            ">;"
        }
    .end annotation
.end field

.field public case:Z

.field public do:Z

.field public else:Z

.field public for:Z

.field public goto:Z

.field public if:Z

.field public new:Z

.field public this:Ljava/util/concurrent/ExecutorService;

.field public try:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/apk/sl0;->catch:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/apk/sl0;->do:Z

    .line 3
    iput-boolean v0, p0, Lcom/apk/sl0;->if:Z

    .line 4
    iput-boolean v0, p0, Lcom/apk/sl0;->for:Z

    .line 5
    iput-boolean v0, p0, Lcom/apk/sl0;->new:Z

    .line 6
    iput-boolean v0, p0, Lcom/apk/sl0;->case:Z

    .line 7
    sget-object v0, Lcom/apk/sl0;->catch:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/apk/sl0;->this:Ljava/util/concurrent/ExecutorService;

    return-void
.end method
