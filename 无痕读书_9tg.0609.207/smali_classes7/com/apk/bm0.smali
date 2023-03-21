.class public final Lcom/apk/bm0;
.super Ljava/lang/Object;
.source "SubscriberExceptionEvent.java"


# instance fields
.field public final do:Ljava/lang/Throwable;

.field public final for:Ljava/lang/Object;

.field public final if:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/apk/rl0;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/apk/bm0;->do:Ljava/lang/Throwable;

    .line 3
    iput-object p3, p0, Lcom/apk/bm0;->if:Ljava/lang/Object;

    .line 4
    iput-object p4, p0, Lcom/apk/bm0;->for:Ljava/lang/Object;

    return-void
.end method
