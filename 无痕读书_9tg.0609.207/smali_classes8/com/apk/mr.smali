.class public final Lcom/apk/mr;
.super Lcom/apk/ir;
.source "PreloadTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/apk/ir<",
        "TZ;>;"
    }
.end annotation


# static fields
.field public static final try:Landroid/os/Handler;


# instance fields
.field public final new:Lcom/apk/qi;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/apk/mr$do;

    invoke-direct {v2}, Lcom/apk/mr$do;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/apk/mr;->try:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/apk/qi;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/apk/ir;-><init>(II)V

    .line 2
    iput-object p1, p0, Lcom/apk/mr;->new:Lcom/apk/qi;

    return-void
.end method


# virtual methods
.method public if(Ljava/lang/Object;Lcom/apk/sr;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/sr;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;",
            "Lcom/apk/sr<",
            "-TZ;>;)V"
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/apk/mr;->try:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public this(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method
