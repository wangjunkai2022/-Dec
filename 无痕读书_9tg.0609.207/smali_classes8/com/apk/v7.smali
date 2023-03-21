.class public Lcom/apk/v7;
.super Lcom/apk/c1;
.source "ImportFileActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/util/LinkedList<",
        "Lcom/biquge/ebook/app/bean/CollectBook;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Landroid/net/Uri;

.field public final synthetic for:Ljava/util/LinkedHashMap;

.field public final synthetic if:Ljava/lang/String;

.field public final synthetic new:Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;Landroid/net/Uri;Ljava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/v7;->new:Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;

    iput-object p2, p0, Lcom/apk/v7;->do:Landroid/net/Uri;

    iput-object p3, p0, Lcom/apk/v7;->if:Ljava/lang/String;

    iput-object p4, p0, Lcom/apk/v7;->for:Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/apk/v7;->do:Landroid/net/Uri;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/apk/v7;->new:Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/apk/v7;->do:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/apk/a6;->else()Lcom/apk/a6;

    move-result-object v3

    invoke-virtual {v3}, Lcom/apk/a6;->try()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/apk/v7;->if:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    invoke-static {v1}, Lcom/apk/ze;->U(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 6
    iget-object v0, p0, Lcom/apk/v7;->for:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/apk/v7;->for:Ljava/util/LinkedHashMap;

    iget-object v4, p0, Lcom/apk/v7;->if:Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_0
    if-eqz v1, :cond_2

    .line 8
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v2

    move-object v3, v0

    goto :goto_3

    :catch_2
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    goto :goto_4

    :catch_3
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 10
    :goto_0
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_1

    .line 11
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    :catch_4
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    if-eqz v3, :cond_5

    .line 13
    :cond_2
    :goto_2
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_7

    :catch_5
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v2, v0

    :goto_3
    move-object v0, v1

    :goto_4
    if-eqz v0, :cond_3

    .line 15
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_5

    :catch_6
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_5
    if-eqz v3, :cond_4

    .line 17
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_6

    :catch_7
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    :cond_4
    :goto_6
    throw v2

    .line 20
    :cond_5
    :goto_7
    iget-object v0, p0, Lcom/apk/v7;->new:Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;

    iget-object v1, p0, Lcom/apk/v7;->for:Ljava/util/LinkedHashMap;

    invoke-static {v0, v1}, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->k(Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;Ljava/util/LinkedHashMap;)Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/util/LinkedList;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_4

    .line 3
    :try_start_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/CollectBook;

    .line 4
    invoke-static {v0}, Lcom/apk/n2;->v(Lcom/biquge/ebook/app/bean/CollectBook;)V

    .line 5
    iget-object v1, p0, Lcom/apk/v7;->new:Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;

    .line 6
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->if:Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/apk/v7;->new:Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;

    .line 8
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->if:Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;

    .line 9
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getIcon()Ljava/lang/String;

    move-result-object v2

    .line 10
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;->for:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Lcom/apk/v7;->new:Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;

    .line 12
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->if:Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;

    .line 13
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getIcon()Ljava/lang/String;

    move-result-object v2

    .line 14
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;->if:Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;

    if-eqz v1, :cond_1

    .line 15
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 16
    iget-object v1, v1, Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;->for:Ljava/util/Map;

    invoke-static {v2}, Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_1
    iget-object v1, p0, Lcom/apk/v7;->new:Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;

    .line 18
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->for:Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;

    if-eqz v1, :cond_0

    .line 19
    iget-object v1, p0, Lcom/apk/v7;->new:Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;

    .line 20
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->for:Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;

    .line 21
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getIcon()Ljava/lang/String;

    move-result-object v2

    .line 22
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->new:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v1, p0, Lcom/apk/v7;->new:Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;

    .line 24
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->for:Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;

    .line 25
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getIcon()Ljava/lang/String;

    move-result-object v0

    .line 26
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->if:Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;

    if-eqz v1, :cond_0

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 28
    iget-object v1, v1, Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;->for:Ljava/util/Map;

    invoke-static {v0}, Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 29
    :cond_2
    iget-object p1, p0, Lcom/apk/v7;->new:Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;

    .line 30
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->if:Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;

    if-eqz p1, :cond_3

    .line 31
    iget-object p1, p0, Lcom/apk/v7;->new:Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;

    .line 32
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->if:Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;

    .line 33
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;->if:Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;

    if-eqz p1, :cond_3

    .line 34
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 35
    :cond_3
    iget-object p1, p0, Lcom/apk/v7;->new:Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;

    .line 36
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->for:Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;

    if-eqz p1, :cond_4

    .line 37
    iget-object p1, p0, Lcom/apk/v7;->new:Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;

    .line 38
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->for:Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;

    .line 39
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->if:Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;

    if-eqz p1, :cond_4

    .line 40
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 41
    :cond_4
    iget-object p1, p0, Lcom/apk/v7;->new:Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;

    iget-object v0, p0, Lcom/apk/v7;->new:Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 42
    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->l(I)V

    .line 43
    invoke-static {}, Lcom/apk/ze;->V()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    :goto_1
    iget-object p1, p0, Lcom/apk/v7;->new:Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;

    invoke-virtual {p1}, Lcom/apk/f6;->hideBaseLoading()V

    .line 46
    iget-object p1, p0, Lcom/apk/v7;->do:Landroid/net/Uri;

    if-eqz p1, :cond_5

    .line 47
    iget-object p1, p0, Lcom/apk/v7;->new:Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;

    invoke-virtual {p1}, Lcom/apk/f6;->finish()V

    :cond_5
    return-void
.end method

.method public onPreExecute()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/c1;->onPreExecute()V

    .line 2
    iget-object v0, p0, Lcom/apk/v7;->new:Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;

    invoke-virtual {v0}, Lcom/apk/f6;->showBaseLoading()V

    return-void
.end method
