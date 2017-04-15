#ifndef CMAKE_TUTORIAL_CMAKE_TUTORIAL_CMAKE_TUTORIAL_BASE_HPP
#define CMAKE_TUTORIAL_CMAKE_TUTORIAL_CMAKE_TUTORIAL_BASE_HPP

// EXTERNAL DEPENDENCIES
// =============================================================================
#include <string>
#include <random>


class CmakeTutorialBase
{
protected:
    typedef unsigned long sn_t;

    CmakeTutorialBase();
    ~CmakeTutorialBase();

    sn_t serial_number() const;
    void app_info();

private:
    typedef std::default_random_engine engine_t;
    typedef std::uniform_int_distribution<sn_t> dist_t;
    typedef std::string author_t;
    typedef double version_t;

    sn_t sn;

    static const sn_t min_serial_number;
    static const sn_t max_serial_number;
    static engine_t engine;
    static dist_t dist;
    static const author_t author;
    static const version_t version;
};


#endif // ifndef CMAKE_TUTORIAL_CMAKE_TUTORIAL_CMAKE_TUTORIAL_BASE_HPP

