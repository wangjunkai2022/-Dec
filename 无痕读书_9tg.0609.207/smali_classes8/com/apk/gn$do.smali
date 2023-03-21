.class public Lcom/apk/gn$do;
.super Ljava/lang/Object;
.source "UnitModelLoader.java"

# interfaces
.implements Lcom/apk/zm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/gn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/apk/zm<",
        "TModel;TModel;>;"
    }
.end annotation


# static fields
.field public static final do:Lcom/apk/gn$do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/gn$do<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/apk/gn$do;

    invoke-direct {v0}, Lcom/apk/gn$do;-><init>()V

    sput-object v0, Lcom/apk/gn$do;->do:Lcom/apk/gn$do;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 0

    return-void
.end method

.method public for(Lcom/apk/cn;)Lcom/apk/ym;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/cn;",
            ")",
            "Lcom/apk/ym<",
            "TModel;TModel;>;"
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/apk/gn;->do:Lcom/apk/gn;

    return-object p1
.end method
