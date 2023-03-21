.class public Lcom/manhua/ui/activity/ComicGroupDetailActivity$if;
.super Ljava/lang/Object;
.source "ComicGroupDetailActivity.java"

# interfaces
.implements Lcom/apk/ft;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/activity/ComicGroupDetailActivity;->n(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/util/List;

.field public final synthetic if:Lcom/manhua/ui/activity/ComicGroupDetailActivity;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/activity/ComicGroupDetailActivity;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$if;->if:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    iput-object p2, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$if;->do:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$if;->if:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    iget-object v1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$if;->do:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->l(Lcom/manhua/ui/activity/ComicGroupDetailActivity;Ljava/util/List;)V

    return-void
.end method
