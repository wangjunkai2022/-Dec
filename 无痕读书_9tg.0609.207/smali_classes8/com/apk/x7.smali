.class public Lcom/apk/x7;
.super Lcom/apk/c1;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic case:Lcom/biquge/ebook/app/ui/activity/MainActivity;

.field public do:Z

.field public for:Z

.field public if:Z

.field public new:Z

.field public final synthetic try:Z


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/MainActivity;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/x7;->case:Lcom/biquge/ebook/app/ui/activity/MainActivity;

    iput-boolean p2, p0, Lcom/apk/x7;->try:Z

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 4

    const-string v0, "SP_STORE_SEARCH_SHOW_RED_KEY"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/apk/x7;->do:Z

    .line 2
    iget-object v0, p0, Lcom/apk/x7;->case:Lcom/biquge/ebook/app/ui/activity/MainActivity;

    invoke-static {v0}, Lcom/biquge/ebook/app/ui/activity/MainActivity;->p(Lcom/biquge/ebook/app/ui/activity/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SP_IS_VISIBLE_GAME_TAG_VIEW_KEY"

    .line 3
    invoke-static {v0, v1}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/apk/x7;->if:Z

    .line 4
    :cond_0
    invoke-static {}, Lcom/apk/w0;->if()Z

    move-result v0

    iput-boolean v0, p0, Lcom/apk/x7;->for:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lcom/apk/continue;->throws:Lcom/biquge/ebook/app/bean/MyInfoMsgBean;

    if-eqz v0, :cond_1

    const-string v0, "SP_MYINFO_MSG_KEY"

    .line 7
    invoke-static {v0, v2}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v0

    .line 8
    iput-boolean v0, p0, Lcom/apk/x7;->for:Z

    .line 9
    :cond_1
    iget-boolean v0, p0, Lcom/apk/x7;->try:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/apk/eg;->implements()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/apk/x7;->case:Lcom/biquge/ebook/app/ui/activity/MainActivity;

    .line 11
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->import:Lcom/apk/x4;

    .line 12
    invoke-virtual {v0, v2}, Lcom/apk/x4;->while(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 13
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 14
    iget-object v3, v0, Lcom/apk/finally;->while:Lorg/json/JSONObject;

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/apk/finally;->final()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 15
    iget-object v0, v0, Lcom/apk/finally;->while:Lorg/json/JSONObject;

    const-string v3, "swlpopup"

    invoke-static {v0, v3}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 16
    :goto_1
    iput-boolean v1, p0, Lcom/apk/x7;->new:Z

    .line 17
    :cond_4
    invoke-super {p0}, Lcom/apk/c1;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-boolean p1, p0, Lcom/apk/x7;->new:Z

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lcom/apk/abstract;

    invoke-direct {p1}, Lcom/apk/abstract;-><init>()V

    iget-object v0, p0, Lcom/apk/x7;->case:Lcom/biquge/ebook/app/ui/activity/MainActivity;

    .line 4
    iput-object v0, p1, Lcom/apk/abstract;->do:Landroid/app/Activity;

    .line 5
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/apk/private;

    invoke-direct {v1, p1}, Lcom/apk/private;-><init>(Lcom/apk/abstract;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/apk/x7;->case:Lcom/biquge/ebook/app/ui/activity/MainActivity;

    iget-boolean v0, p0, Lcom/apk/x7;->do:Z

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/high16 v3, 0x41100000    # 9.0f

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/activity/MainActivity;->super:Lcom/apk/xp0;

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/activity/MainActivity;->mBottomNavigationView:Lcom/biquge/ebook/app/widget/MainBottomNavigationView;

    const v5, 0x7f090399

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v0, :cond_2

    .line 9
    new-instance v5, Lcom/apk/xp0;

    invoke-direct {v5, p1}, Lcom/apk/xp0;-><init>(Landroid/content/Context;)V

    iput-object v5, p1, Lcom/biquge/ebook/app/ui/activity/MainActivity;->super:Lcom/apk/xp0;

    .line 10
    invoke-virtual {v5, v0}, Lcom/apk/xp0;->do(Landroid/view/View;)Lcom/apk/vp0;

    iget p1, p1, Lcom/biquge/ebook/app/ui/activity/MainActivity;->case:F

    invoke-virtual {v5, p1, v3, v2}, Lcom/apk/xp0;->this(FFZ)Lcom/apk/vp0;

    .line 11
    invoke-virtual {v5, v1}, Lcom/apk/xp0;->goto(I)Lcom/apk/vp0;

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/MainActivity;->super:Lcom/apk/xp0;

    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p1, v4}, Lcom/apk/xp0;->goto(I)Lcom/apk/vp0;

    .line 14
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/apk/x7;->case:Lcom/biquge/ebook/app/ui/activity/MainActivity;

    iget-boolean v0, p0, Lcom/apk/x7;->for:Z

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/activity/MainActivity;->while:Lcom/apk/xp0;

    if-nez v0, :cond_4

    .line 16
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/activity/MainActivity;->mBottomNavigationView:Lcom/biquge/ebook/app/widget/MainBottomNavigationView;

    const v4, 0x7f090398

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v0, :cond_4

    .line 17
    new-instance v4, Lcom/apk/xp0;

    invoke-direct {v4, p1}, Lcom/apk/xp0;-><init>(Landroid/content/Context;)V

    iput-object v4, p1, Lcom/biquge/ebook/app/ui/activity/MainActivity;->while:Lcom/apk/xp0;

    .line 18
    invoke-virtual {v4, v0}, Lcom/apk/xp0;->do(Landroid/view/View;)Lcom/apk/vp0;

    iget p1, p1, Lcom/biquge/ebook/app/ui/activity/MainActivity;->case:F

    invoke-virtual {v4, p1, v3, v2}, Lcom/apk/xp0;->this(FFZ)Lcom/apk/vp0;

    .line 19
    invoke-virtual {v4, v1}, Lcom/apk/xp0;->goto(I)Lcom/apk/vp0;

    goto :goto_1

    .line 20
    :cond_3
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/MainActivity;->while:Lcom/apk/xp0;

    if-eqz p1, :cond_4

    .line 21
    invoke-virtual {p1, v4}, Lcom/apk/xp0;->goto(I)Lcom/apk/vp0;

    .line 22
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/apk/x7;->case:Lcom/biquge/ebook/app/ui/activity/MainActivity;

    iget-boolean v0, p0, Lcom/apk/x7;->if:Z

    invoke-static {p1, v0}, Lcom/biquge/ebook/app/ui/activity/MainActivity;->m(Lcom/biquge/ebook/app/ui/activity/MainActivity;Z)V

    return-void
.end method
