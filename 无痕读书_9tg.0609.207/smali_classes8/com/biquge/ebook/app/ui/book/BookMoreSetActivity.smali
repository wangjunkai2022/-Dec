.class public Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;
.super Lcom/apk/f6;
.source "BookMoreSetActivity.java"

# interfaces
.implements Lcom/biquge/ebook/app/widget/SwitchButton$new;


# instance fields
.field public break:Lcom/apk/bg;

.field public case:Lcom/biquge/ebook/app/widget/SwitchButton;

.field public do:Landroid/widget/TextView;

.field public else:Lcom/biquge/ebook/app/widget/SwitchButton;

.field public for:Landroid/widget/TextView;

.field public goto:Lcom/biquge/ebook/app/widget/SwitchButton;

.field public if:Landroid/widget/TextView;

.field public new:Landroid/widget/TextView;

.field public this:Lcom/biquge/ebook/app/widget/SwitchButton;

.field public try:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity$do;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity$do;-><init>(Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->break:Lcom/apk/bg;

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c002d

    return v0
.end method

.method public final i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->do:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->if:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->for:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->new:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->try:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 6
    invoke-static {}, Lcom/apk/da;->goto()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->try:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->new:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->for:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->if:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->do:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_0
    return-void
.end method

.method public init(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/apk/f6;->init(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lcom/apk/da;->public()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method

.method public initData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->case:Lcom/biquge/ebook/app/widget/SwitchButton;

    invoke-static {}, Lcom/apk/da;->return()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/widget/SwitchButton;->setChecked(Z)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->goto:Lcom/biquge/ebook/app/widget/SwitchButton;

    invoke-static {}, Lcom/apk/da;->class()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/widget/SwitchButton;->setChecked(Z)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->this:Lcom/biquge/ebook/app/widget/SwitchButton;

    invoke-static {}, Lcom/apk/da;->const()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/widget/SwitchButton;->setChecked(Z)V

    .line 4
    invoke-static {}, Lcom/apk/u0;->do()Lcom/apk/u0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/u0;->if()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f090076

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->break:Lcom/apk/bg;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->else:Lcom/biquge/ebook/app/widget/SwitchButton;

    invoke-static {}, Lcom/apk/da;->throw()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/widget/SwitchButton;->setChecked(Z)V

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->i()V

    return-void
.end method

.method public initView()V
    .locals 3

    const v0, 0x7f100081

    .line 1
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    const-string v2, ""

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0900db

    invoke-virtual {p0, v1, v0}, Lcom/apk/f6;->initTopBarOnlyTitle(ILjava/lang/String;)V

    const v0, 0x7f090089

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->do:Landroid/widget/TextView;

    const v0, 0x7f090088

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->if:Landroid/widget/TextView;

    const v0, 0x7f09008b

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->for:Landroid/widget/TextView;

    const v0, 0x7f09008a

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->new:Landroid/widget/TextView;

    const v0, 0x7f090087

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->try:Landroid/widget/TextView;

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->do:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->break:Lcom/apk/bg;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->if:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->break:Lcom/apk/bg;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->for:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->break:Lcom/apk/bg;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->new:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->break:Lcom/apk/bg;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->try:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->break:Lcom/apk/bg;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09013e

    .line 13
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/SwitchButton;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->case:Lcom/biquge/ebook/app/widget/SwitchButton;

    .line 14
    invoke-virtual {v0, p0}, Lcom/biquge/ebook/app/widget/SwitchButton;->setOnCheckedChangeListener(Lcom/biquge/ebook/app/widget/SwitchButton$new;)V

    const v0, 0x7f09013a

    .line 15
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/SwitchButton;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->else:Lcom/biquge/ebook/app/widget/SwitchButton;

    .line 16
    invoke-virtual {v0, p0}, Lcom/biquge/ebook/app/widget/SwitchButton;->setOnCheckedChangeListener(Lcom/biquge/ebook/app/widget/SwitchButton$new;)V

    const v0, 0x7f090138

    .line 17
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/SwitchButton;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->goto:Lcom/biquge/ebook/app/widget/SwitchButton;

    .line 18
    invoke-virtual {v0, p0}, Lcom/biquge/ebook/app/widget/SwitchButton;->setOnCheckedChangeListener(Lcom/biquge/ebook/app/widget/SwitchButton$new;)V

    const v0, 0x7f090139

    .line 19
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/SwitchButton;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->this:Lcom/biquge/ebook/app/widget/SwitchButton;

    .line 20
    invoke-virtual {v0, p0}, Lcom/biquge/ebook/app/widget/SwitchButton;->setOnCheckedChangeListener(Lcom/biquge/ebook/app/widget/SwitchButton$new;)V

    return-void
.end method

.method public isSwipeBackEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCheckedChanged(Lcom/biquge/ebook/app/widget/SwitchButton;Z)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09012f

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const v0, 0x7f09013e

    if-eq p1, v0, :cond_0

    const-string v0, "BOOKREAD_IMMERSION_READ"

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->else:Lcom/biquge/ebook/app/widget/SwitchButton;

    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 3
    sget-object p1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v2, "SP_READ_IMMERSION_KEY"

    invoke-virtual {p1, v2, p2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-static {v0, v1}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :pswitch_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->this:Lcom/biquge/ebook/app/widget/SwitchButton;

    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 6
    sget-object p1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v2, "SP_FULL_SCREEN_MODE_KEY"

    invoke-virtual {p1, v2, p2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 7
    invoke-static {v0, v1}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :pswitch_2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->goto:Lcom/biquge/ebook/app/widget/SwitchButton;

    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 9
    sget-object p1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v0, "SP_FULL_SCREEN_CLICK_NEXT_KEY"

    invoke-virtual {p1, v0, p2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->case:Lcom/biquge/ebook/app/widget/SwitchButton;

    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 11
    sget-object p1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v0, "SP_BOOK_VOLUME_FLIP_PAGE_KEY"

    invoke-virtual {p1, v0, p2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_0
    return-void

    .line 12
    :cond_1
    throw v1

    :pswitch_data_0
    .packed-switch 0x7f090138
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
