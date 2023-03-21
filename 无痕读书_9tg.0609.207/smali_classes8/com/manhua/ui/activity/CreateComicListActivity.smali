.class public Lcom/manhua/ui/activity/CreateComicListActivity;
.super Lcom/apk/f6;
.source "CreateComicListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public break:Ljava/lang/String;

.field public case:Landroidx/recyclerview/widget/RecyclerView;

.field public catch:Lcom/apk/z2;

.field public final class:Lcom/apk/r5;

.field public do:Landroid/view/View;

.field public else:Lcom/manhua/adapter/CreateComicListAdapter;

.field public for:Landroid/widget/EditText;

.field public goto:Ljava/lang/String;

.field public if:Landroid/widget/EditText;

.field public new:Lcom/biquge/ebook/app/widget/AppRadioButton;

.field public this:Ljava/lang/String;

.field public try:Lcom/biquge/ebook/app/widget/AppRadioButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    .line 2
    new-instance v0, Lcom/manhua/ui/activity/CreateComicListActivity$if;

    invoke-direct {v0, p0}, Lcom/manhua/ui/activity/CreateComicListActivity$if;-><init>(Lcom/manhua/ui/activity/CreateComicListActivity;)V

    iput-object v0, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->class:Lcom/apk/r5;

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c003a

    return v0
.end method

.method public getToolBarMenuView()I
    .locals 1

    const v0, 0x7f0d0001

    return v0
.end method

.method public final i()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->catch:Lcom/apk/z2;

    if-eqz v0, :cond_4

    .line 2
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 3
    iget-object v0, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->else:Lcom/manhua/adapter/CreateComicListAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "description"

    const-string v3, ""

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/manhua/data/bean/ComicBean;

    .line 4
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v5, "bookid"

    .line 5
    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicBean;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    iget-object v5, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->else:Lcom/manhua/adapter/CreateComicListAdapter;

    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/manhua/adapter/CreateComicListAdapter;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v3, v1

    :cond_0
    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :goto_1
    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->catch:Lcom/apk/z2;

    iget-object v4, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->this:Ljava/lang/String;

    iget-object v1, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->goto:Ljava/lang/String;

    const-string v5, "my_release"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->this:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v1, v3

    :goto_2
    iget-object v5, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->if:Landroid/widget/EditText;

    .line 11
    invoke-static {v5}, Lcom/apk/goto;->interface(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v6

    iget-object v5, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->for:Landroid/widget/EditText;

    invoke-static {v5}, Lcom/apk/goto;->interface(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v7

    iget-object v5, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->new:Lcom/biquge/ebook/app/widget/AppRadioButton;

    .line 12
    invoke-virtual {v5}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v5

    iget-object v9, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->break:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v10, "action"

    const-string v11, "booklist"

    const-string v12, "listid"

    .line 13
    invoke-static {v10, v11, v12, v1}, Lcom/apk/goto;->public(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v10

    const-string v1, "title"

    .line 14
    invoke-virtual {v10, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {v10, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "isforman"

    invoke-virtual {v10, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cover"

    .line 17
    invoke-virtual {v10, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {v8}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "jsondata"

    invoke-virtual {v10, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/UserListAction.aspx"

    invoke-static {v1, v2}, Lcom/apk/goto;->catch(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 20
    new-instance v12, Lcom/apk/y2;

    move-object v1, v12

    move-object v2, v0

    move-object v3, v4

    move v4, v5

    move-object v5, v9

    invoke-direct/range {v1 .. v8}, Lcom/apk/y2;-><init>(Lcom/apk/z2;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V

    invoke-static {v11, v10, v12}, Lcom/apk/x4;->default(Ljava/lang/String;Ljava/util/Map;Lcom/apk/mx;)V

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 21
    throw v0

    :cond_4
    :goto_3
    return-void
.end method

.method public init(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/apk/f6;->init(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f060049

    invoke-static {v0}, Lcom/apk/tr0;->do(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result p1

    .line 3
    invoke-virtual {p0, p0, p1}, Lcom/apk/f6;->setWindowStatusBarColorValue(Landroid/app/Activity;I)V

    return-void
.end method

.method public initData()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->goto:Ljava/lang/String;

    const-string v1, "bookListId"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->this:Ljava/lang/String;

    const-string v1, "cover"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->break:Ljava/lang/String;

    .line 5
    new-instance v1, Lcom/apk/z2;

    iget-object v2, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->class:Lcom/apk/r5;

    invoke-direct {v1, p0, v2}, Lcom/apk/z2;-><init>(Landroid/app/Activity;Lcom/apk/r5;)V

    iput-object v1, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->catch:Lcom/apk/z2;

    .line 6
    new-instance v1, Lcom/manhua/adapter/CreateComicListAdapter;

    invoke-direct {v1}, Lcom/manhua/adapter/CreateComicListAdapter;-><init>()V

    iput-object v1, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->else:Lcom/manhua/adapter/CreateComicListAdapter;

    .line 7
    iget-object v2, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->case:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8
    iget-object v1, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->else:Lcom/manhua/adapter/CreateComicListAdapter;

    iget-object v2, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->do:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addHeaderView(Landroid/view/View;)I

    .line 9
    iget-object v1, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->goto:Ljava/lang/String;

    const-string v2, "my_release"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 10
    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    const-string v1, "createBookList"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/manhua/data/bean/CreateComicList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    .line 12
    :try_start_1
    invoke-virtual {v0}, Lcom/manhua/data/bean/CreateComicList;->getBookListId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->this:Ljava/lang/String;

    .line 13
    iget-object v1, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->if:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/manhua/data/bean/CreateComicList;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v1, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->for:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/manhua/data/bean/CreateComicList;->getIntro()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 15
    invoke-virtual {v0}, Lcom/manhua/data/bean/CreateComicList;->getCover()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->break:Ljava/lang/String;

    .line 16
    invoke-virtual {v0}, Lcom/manhua/data/bean/CreateComicList;->isForMen()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/manhua/ui/activity/CreateComicListActivity;->k(Z)V

    .line 17
    invoke-virtual {v0}, Lcom/manhua/data/bean/CreateComicList;->getBooks()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 18
    new-instance v1, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lcom/manhua/data/bean/CreateComicList;->getBooks()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 20
    iget-object v4, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->else:Lcom/manhua/adapter/CreateComicListAdapter;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/apk/mu;->s(Lorg/json/JSONObject;)Lcom/manhua/data/bean/ComicBean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addData(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 21
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->if:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 23
    iget-object v0, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->if:Landroid/widget/EditText;

    const v1, 0x7f06008e

    invoke-static {v1}, Lcom/apk/ze;->p(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 24
    iget-object v0, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->if:Landroid/widget/EditText;

    const v1, 0x7f06007c

    invoke-static {v1}, Lcom/apk/ze;->p(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->goto:Ljava/lang/String;

    const-string v1, "my_draftBox"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    :try_start_3
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "bookListId = ?"

    aput-object v1, v0, v2

    .line 27
    iget-object v1, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->this:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-class v1, Lcom/manhua/data/bean/CreateComicList;

    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/manhua/data/bean/CreateComicList;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v0, :cond_4

    .line 28
    :try_start_4
    invoke-virtual {v0}, Lcom/manhua/data/bean/CreateComicList;->getBookListId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->this:Ljava/lang/String;

    .line 29
    invoke-virtual {v0}, Lcom/manhua/data/bean/CreateComicList;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 30
    iget-object v1, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->if:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/manhua/data/bean/CreateComicList;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v1, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->if:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/manhua/data/bean/CreateComicList;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 32
    :cond_2
    iget-object v1, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->for:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/manhua/data/bean/CreateComicList;->getIntro()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 33
    invoke-virtual {v0}, Lcom/manhua/data/bean/CreateComicList;->getCover()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->break:Ljava/lang/String;

    .line 34
    invoke-virtual {v0}, Lcom/manhua/data/bean/CreateComicList;->isForMen()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/manhua/ui/activity/CreateComicListActivity;->k(Z)V

    .line 35
    invoke-virtual {v0}, Lcom/manhua/data/bean/CreateComicList;->getBooks()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 36
    new-instance v1, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lcom/manhua/data/bean/CreateComicList;->getBooks()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/apk/ze;->k0(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 37
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/manhua/data/bean/ComicBean;

    .line 38
    iget-object v3, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->else:Lcom/manhua/adapter/CreateComicListAdapter;

    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicBean;->getDesc()Ljava/lang/String;

    move-result-object v2

    .line 39
    iget-object v3, v3, Lcom/manhua/adapter/CreateComicListAdapter;->if:Ljava/util/Map;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 40
    :cond_3
    iget-object v1, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->else:Lcom/manhua/adapter/CreateComicListAdapter;

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_2
    move-exception v0

    .line 41
    :try_start_5
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->else:Lcom/manhua/adapter/CreateComicListAdapter;

    iget-object v1, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->break:Ljava/lang/String;

    .line 44
    iput-object v1, v0, Lcom/manhua/adapter/CreateComicListAdapter;->do:Ljava/lang/String;

    .line 45
    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 46
    iget-object v0, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->else:Lcom/manhua/adapter/CreateComicListAdapter;

    new-instance v1, Lcom/manhua/ui/activity/CreateComicListActivity$do;

    invoke-direct {v1, p0}, Lcom/manhua/ui/activity/CreateComicListActivity$do;-><init>(Lcom/manhua/ui/activity/CreateComicListActivity;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    return-void
.end method

.method public initView()V
    .locals 3

    const v0, 0x7f090068

    const v1, 0x7f10013e

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/apk/f6;->initTopBarOnlyTitle(II)V

    const v0, 0x7f09048c

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->case:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 4
    iget-object v0, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->case:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 5
    iget-object v0, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->case:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const v0, 0x7f0c00de

    const/4 v1, 0x0

    .line 6
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->do:Landroid/view/View;

    const v1, 0x7f0901aa

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->if:Landroid/widget/EditText;

    .line 8
    iget-object v0, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->do:Landroid/view/View;

    const v1, 0x7f0901a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->for:Landroid/widget/EditText;

    .line 9
    iget-object v0, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->do:Landroid/view/View;

    const v1, 0x7f0901a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/AppRadioButton;

    iput-object v0, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->new:Lcom/biquge/ebook/app/widget/AppRadioButton;

    .line 10
    iget-object v0, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->do:Landroid/view/View;

    const v1, 0x7f0901a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/AppRadioButton;

    iput-object v0, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->try:Lcom/biquge/ebook/app/widget/AppRadioButton;

    .line 11
    invoke-static {}, Lcom/apk/w0;->import()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/manhua/ui/activity/CreateComicListActivity;->k(Z)V

    .line 12
    iget-object v0, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->new:Lcom/biquge/ebook/app/widget/AppRadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->try:Lcom/biquge/ebook/app/widget/AppRadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object v0, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->do:Landroid/view/View;

    const v1, 0x7f0901a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;

    const v1, 0x7f060048

    .line 15
    invoke-static {v1}, Lcom/apk/tr0;->do(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->setBorderColor(I)V

    .line 16
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v0, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->do:Landroid/view/View;

    const v2, 0x7f0901a6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;

    .line 18
    invoke-static {v1}, Lcom/apk/tr0;->do(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->setBorderColor(I)V

    .line 19
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public isImmersionBarEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->if:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/apk/goto;->interface(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->else:Lcom/manhua/adapter/CreateComicListAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v1

    if-lez v1, :cond_6

    .line 3
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->this:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->this:Ljava/lang/String;

    .line 5
    :cond_1
    const-class v1, Lcom/manhua/data/bean/CreateComicList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "bookListId = ?"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->this:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 6
    new-instance v1, Lcom/manhua/data/bean/CreateComicList;

    invoke-direct {v1}, Lcom/manhua/data/bean/CreateComicList;-><init>()V

    .line 7
    iget-object v2, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->this:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/manhua/data/bean/CreateComicList;->setBookListId(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v0}, Lcom/manhua/data/bean/CreateComicList;->setTitle(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->for:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/manhua/data/bean/CreateComicList;->setIntro(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->new:Lcom/biquge/ebook/app/widget/AppRadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/manhua/data/bean/CreateComicList;->setForMen(Z)V

    .line 11
    iget-object v0, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->break:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->break:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/manhua/data/bean/CreateComicList;->setCover(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->else:Lcom/manhua/adapter/CreateComicListAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/manhua/data/bean/CreateComicList;->setBookCount(I)V

    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/manhua/data/bean/ComicBean;

    .line 16
    iget-object v4, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->else:Lcom/manhua/adapter/CreateComicListAdapter;

    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/manhua/adapter/CreateComicListAdapter;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 18
    invoke-virtual {v3, v4}, Lcom/manhua/data/bean/ComicBean;->setDesc(Ljava/lang/String;)V

    goto :goto_1

    .line 19
    :cond_4
    invoke-static {v0}, Lcom/biquge/ebook/app/helper/req/convert/Convert;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-virtual {v1, v0}, Lcom/manhua/data/bean/CreateComicList;->setBooks(Ljava/lang/String;)V

    .line 21
    :cond_5
    invoke-static {}, Lcom/apk/kg;->else()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/manhua/data/bean/CreateComicList;->setSaveTime(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1}, Lorg/litepal/crud/LitePalSupport;->save()Z

    const v0, 0x7f100105

    .line 23
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_2
    return-void
.end method

.method public final k(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->new:Lcom/biquge/ebook/app/widget/AppRadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 2
    iget-object p1, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->try:Lcom/biquge/ebook/app/widget/AppRadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->try:Lcom/biquge/ebook/app/widget/AppRadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 4
    iget-object p1, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->new:Lcom/biquge/ebook/app/widget/AppRadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x5209

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    :try_start_0
    const-string p1, "books"

    .line 2
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 4
    iget-object p2, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->break:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 5
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/manhua/data/bean/ComicBean;

    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicBean;->getImg()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->break:Ljava/lang/String;

    .line 6
    iget-object p3, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->else:Lcom/manhua/adapter/CreateComicListAdapter;

    .line 7
    iput-object p2, p3, Lcom/manhua/adapter/CreateComicListAdapter;->do:Ljava/lang/String;

    .line 8
    :cond_0
    iget-object p2, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->else:Lcom/manhua/adapter/CreateComicListAdapter;

    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->if:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->else:Lcom/manhua/adapter/CreateComicListAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void

    :cond_1
    :goto_0
    const v0, 0x7f10013f

    .line 4
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/manhua/ui/activity/CreateComicListActivity$for;

    invoke-direct {v1, p0}, Lcom/manhua/ui/activity/CreateComicListActivity$for;-><init>(Lcom/manhua/ui/activity/CreateComicListActivity;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/apk/ze;->b0(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;Lcom/apk/dt;Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x5209

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    iget-object p1, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->try:Lcom/biquge/ebook/app/widget/AppRadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 3
    iget-object p1, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->new:Lcom/biquge/ebook/app/widget/AppRadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 4
    :pswitch_1
    iget-object p1, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->new:Lcom/biquge/ebook/app/widget/AppRadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 5
    iget-object p1, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->try:Lcom/biquge/ebook/app/widget/AppRadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 6
    :pswitch_2
    iget-object p1, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->else:Lcom/manhua/adapter/CreateComicListAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1, v2}, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;->k(Landroid/app/Activity;Ljava/util/List;I)V

    goto :goto_0

    .line 7
    :pswitch_3
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/manhua/ui/activity/AddComicFromShelfActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    iget-object v0, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->else:Lcom/manhua/adapter/CreateComicListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->else:Lcom/manhua/adapter/CreateComicListAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    const-string v1, "books"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 10
    :cond_0
    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0901a5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->else:Lcom/manhua/adapter/CreateComicListAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/manhua/data/bean/ComicBean;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicBean;->getImg()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->break:Ljava/lang/String;

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicBean;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->break:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->else:Lcom/manhua/adapter/CreateComicListAdapter;

    iget-object p2, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->break:Ljava/lang/String;

    .line 6
    iput-object p2, p1, Lcom/manhua/adapter/CreateComicListAdapter;->do:Ljava/lang/String;

    .line 7
    iget-object p1, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->else:Lcom/manhua/adapter/CreateComicListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {p0}, Lcom/apk/ze;->goto(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onItemMenuSelected(Landroid/view/MenuItem;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 2
    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Lcom/manhua/ui/activity/CreateComicListActivity;->j()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 4
    :pswitch_1
    :try_start_1
    iget-object p1, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->if:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f100151

    .line 6
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V

    return-void

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->for:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0xc8

    if-le p1, v0, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/manhua/ui/activity/CreateComicListActivity;->else:Lcom/manhua/adapter/CreateComicListAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_2

    const p1, 0x7f10014f

    .line 11
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V

    return-void

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/manhua/ui/activity/CreateComicListActivity;->i()V

    goto :goto_1

    :cond_3
    :goto_0
    const p1, 0x7f100150

    .line 14
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x7f090394
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "my_release"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f090395

    .line 2
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
