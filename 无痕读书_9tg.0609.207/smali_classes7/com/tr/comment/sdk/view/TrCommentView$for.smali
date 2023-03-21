.class public Lcom/tr/comment/sdk/view/TrCommentView$for;
.super Ljava/lang/Object;
.source "TrCommentView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tr/comment/sdk/view/TrCommentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/tr/comment/sdk/view/TrCommentView;


# direct methods
.method public constructor <init>(Lcom/tr/comment/sdk/view/TrCommentView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView$for;->do:Lcom/tr/comment/sdk/view/TrCommentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/tr/comment/sdk/view/TrCommentView$for;->do:Lcom/tr/comment/sdk/view/TrCommentView;

    .line 3
    iget-object v1, v1, Lcom/tr/comment/sdk/view/TrCommentView;->if:Landroidx/fragment/app/FragmentActivity;

    .line 4
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/tr/comment/sdk/view/TrCommentView$for;->do:Lcom/tr/comment/sdk/view/TrCommentView;

    .line 7
    iget v2, v1, Lcom/tr/comment/sdk/view/TrCommentView;->finally:I

    if-nez v2, :cond_0

    .line 8
    iput v0, v1, Lcom/tr/comment/sdk/view/TrCommentView;->finally:I

    goto :goto_0

    :cond_0
    if-eq v2, v0, :cond_2

    sub-int/2addr v2, v0

    .line 9
    iget-object v0, v1, Lcom/tr/comment/sdk/view/TrCommentView;->if:Landroidx/fragment/app/FragmentActivity;

    const/high16 v1, 0x43480000    # 200.0f

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    if-le v2, v0, :cond_2

    .line 11
    invoke-static {}, Lcom/apk/sb0;->do()Lcom/apk/nb0;

    move-result-object v0

    check-cast v0, Lcom/apk/mb0;

    .line 12
    iget-object v1, v0, Lcom/apk/mb0;->if:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v3, "SP_SOFTKEY_HEIGHT"

    .line 13
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/apk/mb0;->do()V

    :cond_2
    :goto_0
    return-void
.end method
