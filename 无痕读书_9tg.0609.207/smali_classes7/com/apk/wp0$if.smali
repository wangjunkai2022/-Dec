.class public Lcom/apk/wp0$if;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BadgeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/wp0;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/PointF;Lcom/apk/xp0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/wp0;


# direct methods
.method public constructor <init>(Lcom/apk/wp0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/wp0$if;->do:Lcom/apk/wp0;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/apk/wp0$if;->do:Lcom/apk/wp0;

    .line 2
    iget-object p1, p1, Lcom/apk/wp0;->if:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apk/xp0;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/apk/xp0;->case()V

    :cond_0
    return-void
.end method
