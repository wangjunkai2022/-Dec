.class public Lcom/biquge/ebook/app/adapter/CreateBookListAdapter$if;
.super Ljava/lang/Object;
.source "CreateBookListAdapter.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/adapter/CreateBookListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation


# instance fields
.field public final do:Ljava/lang/String;

.field public final synthetic for:Lcom/biquge/ebook/app/adapter/CreateBookListAdapter;

.field public final if:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/adapter/CreateBookListAdapter;Ljava/lang/String;Landroid/widget/ImageView;Lcom/biquge/ebook/app/adapter/CreateBookListAdapter$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/adapter/CreateBookListAdapter$if;->for:Lcom/biquge/ebook/app/adapter/CreateBookListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/biquge/ebook/app/adapter/CreateBookListAdapter$if;->do:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/biquge/ebook/app/adapter/CreateBookListAdapter$if;->if:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/biquge/ebook/app/adapter/CreateBookListAdapter$if;->for:Lcom/biquge/ebook/app/adapter/CreateBookListAdapter;

    iget-object p3, p0, Lcom/biquge/ebook/app/adapter/CreateBookListAdapter$if;->do:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p4

    .line 2
    iget-object v0, p2, Lcom/biquge/ebook/app/adapter/CreateBookListAdapter;->if:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p2, Lcom/biquge/ebook/app/adapter/CreateBookListAdapter;->if:Ljava/util/Map;

    .line 4
    :cond_0
    iget-object p2, p2, Lcom/biquge/ebook/app/adapter/CreateBookListAdapter;->if:Ljava/util/Map;

    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p2, p0, Lcom/biquge/ebook/app/adapter/CreateBookListAdapter$if;->if:Landroid/widget/ImageView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
