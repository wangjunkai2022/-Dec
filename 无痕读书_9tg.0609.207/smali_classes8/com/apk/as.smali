.class public final Lcom/apk/as;
.super Ljava/lang/Object;
.source "Executors.java"


# static fields
.field public static final do:Ljava/util/concurrent/Executor;

.field public static final if:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/apk/as$do;

    invoke-direct {v0}, Lcom/apk/as$do;-><init>()V

    sput-object v0, Lcom/apk/as;->do:Ljava/util/concurrent/Executor;

    .line 2
    new-instance v0, Lcom/apk/as$if;

    invoke-direct {v0}, Lcom/apk/as$if;-><init>()V

    sput-object v0, Lcom/apk/as;->if:Ljava/util/concurrent/Executor;

    return-void
.end method
