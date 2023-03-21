.class public final Lcom/apk/jo0$if;
.super Lcom/apk/zn0;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/jo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/zn0<",
        "Lcom/apk/no0;",
        ">;"
    }
.end annotation


# instance fields
.field public final do:Lcom/apk/jo0;


# direct methods
.method public constructor <init>(Lcom/apk/jo0;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/apk/zn0;-><init>(I)V

    .line 2
    iput-object p1, p0, Lcom/apk/jo0$if;->do:Lcom/apk/jo0;

    return-void
.end method


# virtual methods
.method public do()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/jo0$if;->do:Lcom/apk/jo0;

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Lcom/apk/jo0;->try:Ljava/lang/ref/WeakReference;

    return-void
.end method
