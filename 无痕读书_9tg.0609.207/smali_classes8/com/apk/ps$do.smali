.class public Lcom/apk/ps$do;
.super Ljava/lang/Object;
.source "RefreshableBannerView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/ps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/ps;


# direct methods
.method public constructor <init>(Lcom/apk/ps;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ps$do;->do:Lcom/apk/ps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/ps$do;->do:Lcom/apk/ps;

    .line 2
    iget-object v1, v0, Lcom/apk/ps;->new:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    .line 4
    iput-boolean v1, v0, Lcom/apk/ps;->if:Z

    .line 5
    iget-object v0, p0, Lcom/apk/ps$do;->do:Lcom/apk/ps;

    .line 6
    iget-boolean v1, v0, Lcom/apk/ps;->if:Z

    .line 7
    invoke-virtual {v0, v1}, Lcom/apk/ps;->do(Z)V

    return-void
.end method
