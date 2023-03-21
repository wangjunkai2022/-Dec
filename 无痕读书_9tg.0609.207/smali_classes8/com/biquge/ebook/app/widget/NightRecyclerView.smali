.class public Lcom/biquge/ebook/app/widget/NightRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "NightRecyclerView.java"

# interfaces
.implements Lcom/apk/js0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/NightRecyclerView;->if()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/NightRecyclerView;->if()V

    return-void
.end method

.method public final if()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/apk/da;->while()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f08021e

    .line 2
    invoke-static {v0}, Lcom/apk/tr0;->do(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f08021d

    .line 3
    invoke-static {v0}, Lcom/apk/tr0;->do(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method
