.class public Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "FilePickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Ljava/io/File;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public do:[Z

.field public for:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public if:Lcom/apk/wh;

.field public new:Z


# direct methods
.method public constructor <init>(Lcom/apk/wh;)V
    .locals 3

    const v0, 0x7f0c011c

    .line 1
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;->for:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;->if:Lcom/apk/wh;

    .line 4
    invoke-static {}, Lcom/apk/n2;->implements()Ljava/util/List;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/CollectBook;

    .line 6
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getIcon()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;->for:Ljava/util/Map;

    invoke-static {v1}, Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static if(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/storage/emulated/0"

    const-string v1, "/sdcard"

    .line 2
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 11

    .line 1
    check-cast p2, Ljava/io/File;

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    const v1, 0x7f09029f

    .line 3
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0905d3

    .line 4
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0905d8

    .line 5
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090130

    .line 6
    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/biquge/ebook/app/widget/AppCheckBox;

    .line 7
    iget-boolean v5, p0, Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;->new:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 8
    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_0
    const v5, 0x7f0905d9

    .line 9
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v5, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 10
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v5

    const v7, 0x7f09036a

    const/16 v8, 0x8

    if-eqz v5, :cond_2

    const v5, 0x7f08031a

    .line 11
    invoke-virtual {p1, v7, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 12
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/apk/ze;->throws(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 14
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/apk/kg;->goto(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget-boolean v2, p0, Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;->new:Z

    if-nez v2, :cond_4

    .line 17
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;->for:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 18
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    invoke-virtual {v4, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 22
    :cond_2
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f0800aa

    .line 23
    invoke-virtual {p1, v7, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 24
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;->if:Lcom/apk/wh;

    invoke-virtual {p2, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    const v5, 0x7f100169

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    .line 25
    :cond_3
    array-length v1, v1

    .line 26
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v6

    .line 27
    invoke-static {v5, v7}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    invoke-virtual {v4, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 29
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 30
    :cond_4
    :goto_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/apk/th;

    invoke-direct {v1, p0, p2, v4, v0}, Lcom/apk/th;-><init>(Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;Ljava/io/File;Lcom/biquge/ebook/app/widget/AppCheckBox;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    new-instance p1, Lcom/apk/uh;

    invoke-direct {p1, p0, p2, v0}, Lcom/apk/uh;-><init>(Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;Ljava/io/File;I)V

    invoke-virtual {v4, p1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 32
    invoke-virtual {v4, p1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 33
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;->do:[Z

    aget-boolean p1, p1, v0

    invoke-virtual {v4, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 34
    new-instance p1, Lcom/apk/vh;

    invoke-direct {p1, p0, v0}, Lcom/apk/vh;-><init>(Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;I)V

    invoke-virtual {v4, p1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public do(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 2
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;->do:[Z

    return-void
.end method
