.class public Lcom/manhua/adapter/CreateComicListAdapter$if;
.super Ljava/lang/Object;
.source "CreateComicListAdapter.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manhua/adapter/CreateComicListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation


# instance fields
.field public do:Ljava/lang/String;

.field public final synthetic for:Lcom/manhua/adapter/CreateComicListAdapter;

.field public if:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/manhua/adapter/CreateComicListAdapter;Ljava/lang/String;Landroid/widget/ImageView;Lcom/manhua/adapter/CreateComicListAdapter$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/adapter/CreateComicListAdapter$if;->for:Lcom/manhua/adapter/CreateComicListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/manhua/adapter/CreateComicListAdapter$if;->do:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/manhua/adapter/CreateComicListAdapter$if;->if:Landroid/widget/ImageView;

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
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/manhua/adapter/CreateComicListAdapter$if;->for:Lcom/manhua/adapter/CreateComicListAdapter;

    iget-object p3, p0, Lcom/manhua/adapter/CreateComicListAdapter$if;->do:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p4

    .line 2
    iget-object p2, p2, Lcom/manhua/adapter/CreateComicListAdapter;->if:Ljava/util/Map;

    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p2, p0, Lcom/manhua/adapter/CreateComicListAdapter$if;->if:Landroid/widget/ImageView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
