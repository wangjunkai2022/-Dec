.class public Lcom/apk/class$do;
.super Ljava/lang/Object;
.source "AdBestTopHelper.java"

# interfaces
.implements Lcom/apk/n40;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/class;


# direct methods
.method public constructor <init>(Lcom/apk/class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/class$do;->do:Lcom/apk/class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/class$do;->do:Lcom/apk/class;

    invoke-virtual {v0}, Lcom/apk/class;->if()V

    return-void
.end method

.method public for()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/class$do;->do:Lcom/apk/class;

    .line 2
    iget-object v0, v0, Lcom/apk/class;->break:Landroid/widget/LinearLayout;

    .line 3
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/apk/class$do;->do:Lcom/apk/class;

    .line 5
    iget-object v0, v0, Lcom/apk/class;->break:Landroid/widget/LinearLayout;

    .line 6
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/apk/class$do;->do:Lcom/apk/class;

    .line 8
    iget-boolean v0, v0, Lcom/apk/class;->catch:Z

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/apk/class$do;->do:Lcom/apk/class;

    .line 10
    iget-object v0, v0, Lcom/apk/class;->break:Landroid/widget/LinearLayout;

    .line 11
    iget-object v1, p0, Lcom/apk/class$do;->do:Lcom/apk/class;

    .line 12
    iget-object v1, v1, Lcom/apk/class;->class:Lcom/swl/gg/ggs/SwlAdBesttopView;

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/apk/class$do;->do:Lcom/apk/class;

    .line 15
    iget-object v0, v0, Lcom/apk/class;->break:Landroid/widget/LinearLayout;

    .line 16
    iget-object v1, p0, Lcom/apk/class$do;->do:Lcom/apk/class;

    .line 17
    iget-object v1, v1, Lcom/apk/class;->const:Lcom/swl/gg/ggs/SwlAdBesttopTwoView;

    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public if()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/apk/class$do;->do:Lcom/apk/class;

    .line 2
    iget-object v0, v0, Lcom/apk/class;->break:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/apk/class$do;->do:Lcom/apk/class;

    .line 5
    iget-object v0, v0, Lcom/apk/class;->break:Landroid/widget/LinearLayout;

    .line 6
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/apk/class$do;->do:Lcom/apk/class;

    invoke-virtual {v0}, Lcom/apk/class;->try()V

    .line 8
    iget-object v0, p0, Lcom/apk/class$do;->do:Lcom/apk/class;

    .line 9
    iget-wide v1, v0, Lcom/apk/class;->new:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 10
    iget-object v0, v0, Lcom/apk/class;->break:Landroid/widget/LinearLayout;

    .line 11
    new-instance v1, Lcom/apk/this;

    invoke-direct {v1, p0}, Lcom/apk/this;-><init>(Lcom/apk/class$do;)V

    iget-object v2, p0, Lcom/apk/class$do;->do:Lcom/apk/class;

    .line 12
    iget-wide v2, v2, Lcom/apk/class;->new:J

    .line 13
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
