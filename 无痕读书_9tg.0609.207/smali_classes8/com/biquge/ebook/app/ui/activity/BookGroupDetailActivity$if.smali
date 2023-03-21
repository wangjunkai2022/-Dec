.class public Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$if;
.super Ljava/lang/Object;
.source "BookGroupDetailActivity.java"

# interfaces
.implements Lcom/apk/ft;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->q(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/util/List;

.field public final synthetic if:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$if;->if:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    iput-object p2, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$if;->do:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$if;->if:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$if;->do:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->i(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;Ljava/util/List;)V

    return-void
.end method
