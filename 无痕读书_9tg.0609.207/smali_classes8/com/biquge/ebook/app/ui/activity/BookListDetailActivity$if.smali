.class public Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity$if;
.super Lcom/apk/bg;
.source "BookListDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090036

    if-ne v0, v1, :cond_1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/v0;->const()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;

    invoke-static {p1}, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->l(Landroid/content/Context;)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;

    .line 5
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->if:Lcom/apk/v3;

    if-eqz p1, :cond_6

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;

    .line 7
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->catch:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 9
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;

    .line 10
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->if:Lcom/apk/v3;

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;

    .line 12
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->catch:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, v0}, Lcom/apk/v3;->final(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 15
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090033

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    .line 16
    :try_start_1
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/v0;->const()Z

    move-result p1

    if-nez p1, :cond_2

    .line 17
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;

    invoke-static {p1}, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->l(Landroid/content/Context;)V

    return-void

    .line 18
    :cond_2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;

    .line 19
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->if:Lcom/apk/v3;

    if-eqz p1, :cond_6

    .line 20
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;

    .line 21
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->catch:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 23
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;

    .line 24
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->if:Lcom/apk/v3;

    .line 25
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;

    .line 26
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->catch:Ljava/lang/String;

    .line 27
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;

    .line 28
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->const:Lcom/biquge/ebook/app/bean/BookInfoEntity;

    .line 29
    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/apk/v3;->const(ZLjava/lang/String;Lcom/biquge/ebook/app/bean/BookInfoEntity;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 31
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090035

    if-ne v0, v1, :cond_5

    .line 32
    :try_start_2
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/v0;->const()Z

    move-result p1

    if-nez p1, :cond_4

    .line 33
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;

    invoke-static {p1}, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->l(Landroid/content/Context;)V

    return-void

    :cond_4
    const p1, 0x7f100259

    new-array v0, v3, [Ljava/lang/Object;

    .line 34
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;

    .line 35
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->class:Ljava/lang/String;

    aput-object v1, v0, v2

    .line 36
    invoke-static {p1, v0}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;

    sget-object v1, Lcom/apk/hf;->do:Lcom/apk/hf;

    invoke-static {v0, v1, p1}, Lcom/apk/w0;->else(Landroid/content/Context;Lcom/apk/hf;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 39
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090034

    if-ne p1, v0, :cond_6

    .line 40
    :try_start_3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;

    .line 41
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->catch:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 43
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;

    .line 44
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->catch:Ljava/lang/String;

    .line 45
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;

    .line 46
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->class:Ljava/lang/String;

    .line 47
    invoke-static {p1, v0, v1, v3, v2}, Lcom/apk/ze;->s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_0
    return-void
.end method
